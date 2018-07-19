<?php 

function createThumbnail($imagePath, $cropWidth = 100, $cropHeight = 100){

	/* Чтение изображения */
	$imagick = new Imagick($imagePath);
	$width = $imagick->getImageWidth();
	$height = $imagick->getImageHeight();

	/* Проверить корректно ли это изображение, проверка на тип файла */
	// Сделать проверку

	// Изменение размера
	if ( $width > $height ) {
		$imagick->thumbnailImage(0, $cropHeight);
	} else {
		$imagick->thumbnailImage($cropWidth, 0);
	}

	// Кадрирование - обрезка, crop

	// Определяем размеры полученной миниатюры
	$width = $imagick->getImageWidth();
	$height = $imagick->getImageHeight();

	// Определяем центр изображения
	$centreX = round($width / 2); // 300
	$centreY = round($height / 2); // 150

	// Определяем точку для обрезки по центру 
	$cropWidthHalf  = round($cropWidth / 2);
	$cropHeightHalf = round($cropHeight / 2);
	
	// Координаты для старта отбрезки
	$startX = max(0, $centreX - $cropWidthHalf);
	$startY = max(0, $centreY - $cropHeightHalf);

	$imagick->cropImage($cropWidth, $cropHeight, $startX, $startY);

	// Возвращаем готовое изображение
	return $imagick;
	$imagick->destroy();
}

function createThumbnailBig($imagePath, $cropWidth, $cropHeight){
	
	/* Чтение изображения */
	$imagick = new Imagick($imagePath);
	$width = $imagick->getImageWidth();
	$height = $imagick->getImageHeight();


	if ( $width >= $height ) {
		// Для широких картинок
		$imagick->thumbnailImage($cropWidth, 0);
	} else {
		// Для высоких картинок
		// $imagick->thumbnailImage($cropWidth, 0);
		// $imagick->cropThumbnailImage($cropWidth, $cropHeight);
		
		$imagick->thumbnailImage(0, $cropHeight);
	}

	return $imagick;
	$imagick->destroy();
}

function createThumbnailCrop($imagePath, $cropWidth, $cropHeight){
	
	/* Чтение изображения */
	$imagick = new Imagick($imagePath);
	$width = $imagick->getImageWidth();
	$height = $imagick->getImageHeight();
	$imagick->cropThumbnailImage($cropWidth, $cropHeight);
	return $imagick;
	$imagick->destroy();

}

?>