<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col-2">
          <h1>Категории</h1>
        </div>
        <div class="col-10">
          <a href="<?=HOST?>blog/category-new" class="button button-edit">добавить категорию</a>
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
                  <td><a href="<?=HOST?>blog/category-edit?id=<?=$cat->id?>" class="button button-edit tbl-button">Редактировать</a></td>
                  <td>
                    <a href="<?=HOST?>blog/category-delete?id=<?=$cat->id?>" class="button button-delete">Удалить</a>
                  </td>
                </tr>
              <?php }?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
