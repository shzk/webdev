function initMap() {
    let isDraggable;
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
        isDraggable = false;
    } else {
        isDraggable = true;
    }
    const map = new google.maps.Map(document.getElementById('map'), {
        center: place,
        zoom: 12,
        disableDefaultUI: true,
        draggable: isDraggable,
        styles: [{ "featureType": "landscape.natural", "elementType": "geometry.fill", "stylers": [{ "visibility": "on" }, { "color": "#e0efef" }] }, { "featureType": "poi", "elementType": "geometry.fill", "stylers": [{ "visibility": "on" }, { "hue": "#1900ff" }, { "color": "#c0e8e8" }] }, { "featureType": "road", "elementType": "geometry", "stylers": [{ "lightness": 100 }, { "visibility": "simplified" }] }, { "featureType": "road", "elementType": "labels", "stylers": [{ "visibility": "off" }] }, { "featureType": "transit.line", "elementType": "geometry", "stylers": [{ "visibility": "on" }, { "lightness": 700 }] }, { "featureType": "water", "elementType": "all", "stylers": [{ "color": "#61dac9" }] }]
    });
    let placeMarker = new google.maps.Marker({
        position: place,
        map: map,
        title: 'Денис Токарев',
        icon: '../templates/assets/img/googleMap/pin-green.png'
    });
}