<?php
  if (isset($errors)) {
    foreach ($errors as $error) {
      if (count($error) == 1) {?>
      <div class="error-message error-message__email"><?=$error['title']?></div>
    <?php } else if (count($error) == 2) {?>
      <div class="block-error block-error__booked">
        <div class="error-message error-message__booked"><?=$error['title']?></div>
        <div class="description-error">
          <p><?=$error['desc']?></p>
        </div>
      </div>
    <?php }
    }
  }
?>