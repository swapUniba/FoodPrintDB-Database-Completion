create table ingredients_name_alias
(
    ingredient_id int,
    name                     varchar(128)                        not null,
    constraint ingredient_id_fk
        foreign key (ingredient_id) references ingredients(ingredient_id)
            on update cascade on delete cascade
);
create index name_alias_idx
    on ingredients_name_alias (name);