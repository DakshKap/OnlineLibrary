
//For tabs In login Page
//Daksh Kapur
$(document).ready(function () {
    $(".nav-tabs a").click(function () {
        $(this).tab('show');
    });
});
//Google Maps By Shilpa Gandhi
function initMap() {
    var coord = { lat: 43.785048, lng: -79.226922 };
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 8,
        scrollwheel: false,
        center: coord

    });
    var marker = new google.maps.Marker({
        position: coord,
        map: map
    });
}