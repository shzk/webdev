<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col-4">
          <h1>Категории блога</h1>
        </div>
        <div class="col-8">
          <a href="<?=HOST?>category-new" class="button button-edit">добавить категорию</a>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Названиe</th>
                <th scope="col">Редактировать</th>
                <th scope="col">Удалить</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($categories as $cat) { ?>
                <tr>
                  <th scope="row"><?=$cat->id?></th>
                  <td><?=$cat->cat_title?></td>
                  <td><a href="<?=HOST?>category-edit?id=<?=$cat->id?>" class="button button-edit tbl-button">Редактировать</a></td>
                  <td>
                    <a href="<?=HOST?>category-delete?id=<?=$cat->id?>" class="button button-delete">Удалить</a>
                  </td>
                </tr>
              <?php }?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="line"></div>
    <div class="container">
      <div class="row">
        <div class="col-4">
          <h2>Категории работ</h2>
        </div>
        <div class="col-8">
          <a href="<?=HOST?>category-works-new" class="button button-edit">добавить категорию</a>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Названиe</th>
                <th scope="col">Редактировать</th>
                <th scope="col">Удалить</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($work_categories as $work_cat) { ?>
                <tr>
                  <th scope="row"><?=$work_cat->id?></th>
                  <td><?=$work_cat->w_cat_title?></td>
                  <td><a href="<?=HOST?>category-works-edit?id=<?=$work_cat->id?>" class="button button-edit tbl-button">Редактировать</a></td>
                  <td>
                    <a href="<?=HOST?>category-works-delete?id=<?=$work_cat->id?>" class="button button-delete">Удалить</a>
                  </td>
                </tr>
              <?php }?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col-4">
          <h2>Категории работ</h2>
        </div>
        <div class="col-8">
          <a href="<?=HOST?>category-new" class="button button-edit">добавить категорию</a>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Названиe</th>
                <th scope="col">Редактировать</th>
                <th scope="col">Удалить</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($categories as $cat) { ?>
                <tr>
                  <th scope="row"><?=$cat->id?></th>
                  <td><?=$cat->cat_title?></td>
                  <td><a href="<?=HOST?>category-edit?id=<?=$cat->id?>" class="button button-edit tbl-button">Редактировать</a></td>
                  <td>
                    <a href="<?=HOST?>category-delete?id=<?=$cat->id?>" class="button button-delete">Удалить</a>
                  </td>
                </tr>
              <?php }?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>