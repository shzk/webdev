<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col">
          <h1>Сообщения</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <?php foreach ($messages as $message) { ?>
            <div class="comment-user"><a class="button button-delete" href="<?=HOST?>messages?id=<?=$message->id?>"> Удалить </a>
              <div class="comment-user__date"><?php echo rus_date("j F Y", strtotime($message['date_time'])); ?></div>

              <?php if( $message->name != '') { ?>
              <div class="comment-user-profile"><span class="comment-user-profile__name"><?=$message->name?></span>&nbsp;
              <?php } ?>

              <a class="comment-user-profile__email" href="mailto:<?=$message->email?>"><?=$message->email?></a></div>

              <?php if( $message->message != '') { ?>
                <div class="comment-user__message"><?=$message->message?></div>
              <?php } ?>

              <?php if( $message->message_file != '') { ?>
                <div class="comment-user__file">Прикрепленные файлы: <a href="<?=HOST.'usercontent/upload_files/'.$message->message_file?>" target="_blank"><?=$message->message_original_file?></a></div>
              <?php } ?>

            </div>
          <?php } ?>
        </div>
      </div>
    </div>
  </div>