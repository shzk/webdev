<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Редактировать пост</h1>
          <form action="<?=HOST?>blog/post-edit?id=<?=$post->id?>" method="POST" enctype="multipart/form-data">
          <section class="add-post">
            <div class="add-post__title">Название</div>
            <input class="form-full-width" type="text" name="title" value="<?=$post->title?>"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Категория</div>
            <select name="category">
              <?php foreach ($categories as $cat) { ?>
                <option value="<?=$cat->id?>"
                <?php if($cat->id == $post->cat) {
                  echo "selected";
                }?>
                ><?=$cat->cat_title?></option>
              <?php } ?>
            </select>
          </section>
          <section class="add-post">
            <div class="add-post__title">Изображение</div>
            <div class="form-download">
              <div class="form-download__title">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>
              <div class="form-download__container"> 
                <input type="file" id="postImg" name="postImg" style="display:none;" class="inputfile"/>
                <label class="form-download__btn" for="postImg">Выбрать файл</label>
                <span></span>
              </div>
              <div class="form-download__preview">
                <div class="form-download__preview__container" id="output">
                  <?php if ($post['post_img'] != "") { ?>
                    <div class="form-download__preview__delete">
                      <a class="testBtn" id="deletePostImg">Удалить</a>
                    </div>
                  <?php } ?>
                  <div class="form-download__image-container">
                    <?php if ($post['post_img'] != "") { ?>
                      <img class="form-download__image" src="<?=HOST?>usercontent/blog/<?=$post->post_img_small?>"/>
                    <?php } else { ?>
                      <img class="form-download__image" src="<?=HOST?>usercontent/blog/no_image.png"/>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <?php if ($post['post_img'] != "") { ?>
                <div class="save-check__block" id="deletePostImgCheckBox" style="display: none;">
                  <input id="deleteImgCheckBox" type="checkbox" name="deleteImg"  hidden="hidden"/>
                  <label for="deleteImgCheckBox">Картинка будет удалена</label>
                </div>
              <?php } ?>
            </div>
          </section>
          <section class="add-post">
            <div class="add-post__title">Содержание</div>
            <textarea id="ck" class="form-message" name="text" placeholder="Сообщение"><?=$post->text?></textarea>
            <input type="submit" class="button button-save" value="Сохранить" name="postUpdate">
            <a class="button button-regular" href="<?=HOST?>blog/post?id=<?=$post->id?>"> Отмена </a>
          </section>
          </form>
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>