/*connect to mysql DB and run as root user*/

/*Create databases:*/
CREATE DATABASE recipe_app_dev;
CREATE DATABASE recipe_app_prod;

/*CREATE database users*/
CREATE user 'recipe_app_dev_user@%' IDENTIFIED BY 'password';
CREATE user 'recipe_app_prod_user@%' IDENTIFIED BY 'password';
/*% --> wild card comming from any host*/

/*Grant access to DML to databases*/
GRANT SELECT ON recipe_app_dev.* to 'recipe_app_dev_user@%';
GRANT INSERT ON recipe_app_dev.* to 'recipe_app_dev_user@%';
GRANT DELETE ON recipe_app_dev.* to 'recipe_app_dev_user@%';
GRANT UPDATE ON recipe_app_dev.* to 'recipe_app_dev_user@%';

GRANT SELECT ON recipe_app_prod.* to 'recipe_app_prod_user@%';
GRANT INSERT ON recipe_app_prod.* to 'recipe_app_prod_user@%';
GRANT DELETE ON recipe_app_prod.* to 'recipe_app_prod_user@%';
GRANT UPDATE ON recipe_app_prod.* to 'recipe_app_prod_user@%';
