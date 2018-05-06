<?php
  unset($_SESSION['logged_user']);
  unset($_SESSION['login']);
  unset($_SESSION['role']);
  session_destroy();
  setcookie(session_name(), '', time() - 60*60*24*32, '');
  header("Location: " . HOST);
?>