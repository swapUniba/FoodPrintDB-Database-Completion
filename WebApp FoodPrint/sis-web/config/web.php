<?php
/* GLOBAL VARIABLES */

include_once (__DIR__."/environment.php");

define("BRAND_NAME","uWorship");
define("PROJECT_NAME","Food Print");

define("OWNER_NAME", "uWorship");
define("SITE_NAME", "uWorship.it");
define("ROOT_DIR",$_SERVER['DOCUMENT_ROOT']);
define("PROJECT_ROOT_DIR", ROOT_DIR.PROJECT_DIR);
define("PROJECT_VIEWS_DIR", PROJECT_ROOT_DIR.'/views');
define("PROJECT_MODELS_DIR", PROJECT_ROOT_DIR.'/models');
define("ADMIN_CP_URL", "https://".DOMAIN_NAME.PROJECT_DIR."/admin/");
define("ALERT_EMAIL", "info@uWorship.it");
define("PROJECT_URL", "https://".$_SERVER['SERVER_NAME'].PROJECT_DIR);

