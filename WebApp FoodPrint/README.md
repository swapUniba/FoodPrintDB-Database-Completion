# WebApp FoodPrint

How to install the webapp locally:


*	Install a web server like MAMP o XAMPP, then place the project in the folder "sis-web" in the folder "htdocs". 

*	In the web/config/environment.php file, change the port on which the webserver works in the constant DOMAIN_NAME. If you use port 80 (for example, XAMPP does this by default), you just need to delete the string ":8080" from the constant.

*	Remaining in the same file, insert the access data for the database in the appropriate constants.

*	Install the FoodPrintDB_v2 using the scripts present in this [folder](https://github.com/swapUniba/FoodPrintDB-Database-Completion/tree/main/SuEatableLife%20Integration%20In%20FoodPrintDB)

*	Use [Composer](https://getcomposer.org) to install the dependencies (there is already a composer.json / composer.lock file), so you only need to run "composer install".

*	After these steps the webapp should be reachable at http://localhost:SERVER_PORT/sis-web
---

For any question contact: a.gigantelli@studenti.uniba.it or a.iacovazzi6@studenti.uniba.it
