<?php

namespace App\Controllers\Website;

use App\Models\IngredientsModel;
use App\Models\IngredientsRecipesModel;
use App\Models\IngredientsUserModel;
use App\Models\IngredientsNameAliasModel;
use App\Models\RecipesModel;
use App\Models\UsersModel;
use App\Packages\Auth\Auth;
use App\Utils\RecipeUtils;
use Fux\Database\Pagination\Cursor\Pagination;
use Fux\FuxQueryBuilder;

class TopRecipesController {

    const TRUST_CFP_MIN = 0.8;
    const TRUST_WFP_MIN = 0.8;
    const ONLY_ENABLED_RECIPES = false;
    const ONLY_RATED_RECIPES = false;

    public static function index(){

        //We need to apply a min-max normalization on recipes sustainability score. This is needed because we have to weight both sustainability score and rating score
        $sustainabilityRange = RecipeUtils::getMinMaxSustainabilityScore(
            self::ONLY_ENABLED_RECIPES ? 0 : null,
            self::TRUST_CFP_MIN,
            self::TRUST_WFP_MIN,
            false //We consider all recipes also those that were not rated on the website
        );
        $sustainabilityRangeSize = $sustainabilityRange['max'] - $sustainabilityRange['min'];

        $ratingCountRange = RecipeUtils::getMinMaxRatingCountScore(
            self::ONLY_ENABLED_RECIPES ? 0 : null,
            self::TRUST_CFP_MIN,
            self::TRUST_WFP_MIN,
            false //We consider all recipes also those that were not rated on the website
        );
        $ratingCountRangeSize = $ratingCountRange['max'] - $ratingCountRange['min'];

        $sustainabilityWeight = 1;
        $ratingWeight = 1 - $sustainabilityWeight;


        $sustainabilityScoreSQL = "(static_score)";
        $ratingScoreSQL = "((IFNULL(r.rating_count, 1) - $ratingCountRange[min])/$ratingCountRangeSize)";

        $recipeScoreQb = (new FuxQueryBuilder())
            ->select(
                "r.recipe_id", "r.title", "r.rating", "r.rating_count" , "GROUP_CONCAT(DISTINCT lower(ina.name)) as ingredients_list", "r.url",
                "$sustainabilityScoreSQL as sustainability_score",
                "$sustainabilityWeight * $sustainabilityScoreSQL + $ratingWeight * (1 - (r.rating/5) * $ratingScoreSQL) as weighted_score")
            ->from(RecipesModel::class, "r")
            ->leftJoin(IngredientsRecipesModel::class, "ir.recipe_id = r.recipe_id", "ir")
            ->leftJoin(IngredientsModel::class, "ir.ingredient_id = i.ingredient_id", "i")
			->leftJoin(IngredientsNameAliasModel::class, "ir.ingredient_id = ina.ingredient_id", "ina")
            ->groupBy("r.recipe_id");

        if (self::TRUST_CFP_MIN) $recipeScoreQb->whereGreaterEqThan("r.trust_cfp", self::TRUST_CFP_MIN);
        if (self::TRUST_WFP_MIN) $recipeScoreQb->whereGreaterEqThan("r.trust_wfp", self::TRUST_WFP_MIN);
        if (self::ONLY_ENABLED_RECIPES) $recipeScoreQb->where("r.disabled", 0);
        if (self::ONLY_RATED_RECIPES) $recipeScoreQb->whereNotNull("r.rating");

        //Assigning a "row num" to the filtered recipes sorted by static score. This is needed in order to use a cursor pagination.
        $rankedRecipes = (new FuxQueryBuilder())->select("*", '@rownum := @rownum + 1 AS rank_')->from($recipeScoreQb, "recipes, (SELECT @rownum := 0) ranking");

        $rankedRecipes->orderBy("sustainability_score", "ASC");

        $topRecipes = (new FuxQueryBuilder())->select("*")->from($rankedRecipes, "ranked_recipes")->limit(10)->execute();

        return view("website/topRecipes", ["topRecipes" => $topRecipes]);
    }

}