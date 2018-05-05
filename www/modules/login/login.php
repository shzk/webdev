<?php

ob_start();
include ROOT . "templates/login/form-login.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_footer.tpl";
