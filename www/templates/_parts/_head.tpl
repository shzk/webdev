<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="UTF-8"/>
    <title>
    <?php if (isset($page_title)) {
      echo $page_title;
    } else {
      echo "Denis Tokarev";
    } ?>
    </title>
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <![endif]-->
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap-reboot.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/><!-- build:cssVendor css/vendor.css -->
    <link rel="stylesheet" href="<?php echo HOST ?>templates/assets/libs/bootstrap-4-grid/grid.min.css"/><!-- endbuild -->
  <!-- build:cssCustom css/main.css -->
    <link rel="stylesheet" href="<?=HOST?>templates/assets/css/main.css"/><!-- endbuild -->
  <!--[if lt IE 9]>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->
  </head>