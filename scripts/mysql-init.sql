/*connect to mysql DB and run as root user*/

/*Create databases:*/
CREATE DATABASE recipe_app_dev_db;
CREATE DATABASE recipe_app_prod_db;

/*CREATE database users*/
CREATE user 'recipe_app_dev_user'@'%' IDENTIFIED BY 'pass';
CREATE user 'recipe_app_prod_user'@'%' IDENTIFIED BY 'pass';
/*% --> wild card comming from any host*/

/*Grant access to DML to databases*/
GRANT SELECT ON recipe_app_dev_db.* to 'recipe_app_dev_user'@'%';
GRANT INSERT ON recipe_app_dev_db.* to 'recipe_app_dev_user'@'%';
GRANT DELETE ON recipe_app_dev_db.* to 'recipe_app_dev_user'@'%';
GRANT UPDATE ON recipe_app_dev_db.* to 'recipe_app_dev_user'@'%';

GRANT SELECT ON recipe_app_prod_db.* to 'recipe_app_prod_user'@'%';
GRANT INSERT ON recipe_app_prod_db.* to 'recipe_app_prod_user'@'%';
GRANT DELETE ON recipe_app_prod_db.* to 'recipe_app_prod_user'@'%';
GRANT UPDATE ON recipe_app_prod_db.* to 'recipe_app_prod_user'@'%';

