<?php
require_once('inc/config.inc.php');
require_once('inc/Page.class.php');
require_once('inc/CustomerPage.class.php');

CustomerPage::$title = "Delivery Food Final Project";
CustomerPage::header();
CustomerPage::navbar();
CustomerPage::showMenuSelection();
CustomerPage::jsBundle();
CustomerPage::footer();
?>