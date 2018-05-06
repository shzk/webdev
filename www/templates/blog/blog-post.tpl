<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10"><a class="button button-edit" href="#"> Редактировать </a>
          <h1 class="full-post__title"><?=$blogPost['title']?></h1><span class="full-post__author">Емельян Казаков</span><a class="full-post__link" href="#">Путешествия</a><span class="full-post__date">16 Марта 2017</span><a class="full-post__link" href="#">2 комментария</a>
          <article><img class="full-post__img" src="../img/posts/post-img.jpg" alt="Название картинки"/>
            <p><?=$blogPost['text']?></p>
          </article>
          <div class="full-post__next-prew"><a class="button button-regular" href="#"> <span class="button__small-fa-icon"><i class="fas fa-arrow-left"></i></span>Назад  </a><a class="button button-regular" href="#"> Вперед  <span class="button__small-fa-icon"><i class="fas fa-arrow-right"></i></span></a>
          </div>
          <h2>2 комментария</h2>
          <div class="comment">
            <div class="avatar avatar-small comment__avatar"><img src="/img/avatar-img/avatar_man.jpg" alt="Джон До"/></div>
            <div class="comment__info__user_date">
              <div class="comment__user_name">Джон До</div>
              <div class="time_container"><i class="far fa-clock"></i>
                <div class="comment__date">05 Мая 2017 года в 15:45</div>
              </div>
            </div>
            <div class="comment__text">Замечательный парк, обязательно отправлюсь туда этим летом.</div>
          </div>
          <div class="comment">
            <div class="avatar avatar-small comment__avatar"><img src="/img/avatar-img/avatar_woman.jpg" alt="Джон До"/></div>
            <div class="comment__info__user_date">
              <div class="comment__user_name">Джон До</div>
              <div class="time_container"><i class="far fa-clock"></i>
                <div class="comment__date">05 Мая 2017 года в 15:45</div>
              </div>
            </div>
            <div class="comment__text">Замечательный парк, обязательно отправлюсь туда этим летом.</div>
          </div>
          <div class="comment-post__title">Оставить комментарий</div>
          <div class="comment-post">
            <div class="avatar avatar-small"><img src="/img/avatar-img/photo-small.jpg" alt=""/></div>
            <div class="comment-post__author">Юрий Ключевский</div>
            <div class="comment-post__form">
              <div class="error-message error-message__comment">Комментарий не может быть пустым.</div>
              <textarea class="form-message" name="Message" placeholder="Присоединиться к обсуждению..."></textarea><a class="button button-regular" href="#"> Опубликовать </a>
            </div>
          </div>
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>
