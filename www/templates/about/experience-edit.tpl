<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title">Опыт работы</h2>
          <?php foreach ($jobs as $work) {
            include "work-card.tpl";
          }?>
        </div>
        <div class="col"></div>
      </div>
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title">Добавить новое место</h2>
          <form action="<?=HOST?>experience-edit" method="POST">
            <div class="comment-user">
              <section class="add-post">
                <?php include(ROOT . 'templates/_parts/_errors.tpl')?>
                <div class="add-post__title">Период</div>
                <input class="form-full-width" type="text" name="period" placeholder="Введите даты начала и окончания работы"/>
              </section>
              <section class="add-post">
                <div class="add-post__title">Название должности</div>
                <input class="form-full-width" type="text" name="title" placeholder="Введите название должности"/>
              </section>
              <section class="add-post add-work">
                <div class="add-post__title">Описание работы, должностные обязанности, достигнутые результат</div>
                <textarea class="form-message" name="description" placeholder="Напишите интересное краткое содержательное описание"></textarea>
                <input type="submit" class="button button-save" value="Добавить" name="newWork">
              </section>
            </div>
          </form>
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>