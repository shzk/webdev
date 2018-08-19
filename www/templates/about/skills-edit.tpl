<div class="full-post">
  <div class="container">
    <div class="row">
      <div class="col"></div>
      <div class="col-10">
        <form action="<?=HOST?>skills-edit" method="POST">
        <h2 class="about-block-title">Технологии</h2>
        <section class="add-skills">
          <div class="skill-field">
          <?php include(ROOT . 'templates/_parts/_errors.tpl')?>
            <div class="add-post__title">HTML5</div>
            <input class="form-scils" type="text" name="html5" value="<?=$skills->html5?>"/><span> &#37;</span>
          </div>
          <div class="skill-field">
            <div class="add-post__title">CSS3</div>
            <input class="form-scils" type="text" name="css3" value="<?=$skills->css3?>"/><span> &#37;</span>
          </div>
          <div class="skill-field">
            <div class="add-post__title">JS</div>
            <input class="form-scils" type="text" name="javascript" value="<?=$skills->javascript?>"/><span> &#37;</span>
          </div>
          <div class="skill-field">
            <div class="add-post__title">jQuery</div>
            <input class="form-scils" type="text" name="jquery" value="<?=$skills->jquery?>"/><span> &#37;</span>
          </div>
        </section>
        <section class="add-skills">
          <div class="skill-field">
            <div class="add-post__title">PHP</div>
            <input class="form-scils" type="text" name="php" value="<?=$skills->php?>"/><span> &#37;</span>
          </div>
          <div class="skill-field">
            <div class="add-post__title">MySql</div>
            <input class="form-scils" type="text" name="mysql" value="<?=$skills->mysql?>"/><span> &#37;</span>
          </div>
        </section>
        <section class="add-skills">
          <div class="skill-field">
            <div class="add-post__title">Git</div>
            <input class="form-scils" type="text" name="git" value="<?=$skills->git?>"/><span> &#37;</span>
          </div>
          <div class="skill-field">
            <div class="add-post__title">Gulp</div>
            <input class="form-scils" type="text" name="gulp" value="<?=$skills->gulp?>"/><span> &#37;</span>
          </div>
          <div class="skill-field">
            <div class="add-post__title">Bower</div>
            <input class="form-scils" type="text" name="bower" value="<?=$skills->bower?>"/><span> &#37;</span>
          </div>
          <div class="skill-field">
            <div class="add-post__title">WebPack</div>
            <input class="form-scils" type="text" name="webpack" value="<?=$skills->webpack?>"/><span> &#37;</span>
          </div>
        </section>
        <section class="add-skills mb-50">
          <input type="submit" class="button button-save" value="Обновить" name="skillsEdit">
          <a href="<?=HOST?>about" class="button button-delete">Отменить</a>
        </section>
        </form>
        <section class="add-skills"></section>
      </div>
      <div class="col"></div>
    </div>
  </div>
</div>