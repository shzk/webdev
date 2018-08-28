<div class="container">
  <div class="portfolio-title">
    <h1>Новые
      <a class="cards-link" href="<?=HOST?>works">работы</a>
    </h1>
  </div>
  <div class="row portfolio-works">
    <?php foreach ($works as $work) {
      include (ROOT."templates/works/work-card.tpl");
    }?>
  </div>
</div>