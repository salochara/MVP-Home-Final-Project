console.log("location")

function geoFindMe() {
  const query = document.getElementById("search_query");

  if (!navigator.geolocation){
    query.value = "Geolocation is not supported by your browser";
    return;
  }

  function success(position) {
    var latitude  = position.coords.latitude;
    var longitude = position.coords.longitude;
    query.value = [`${latitude}`,`${longitude}`]
  }

  function error() {
    query.value = "Unable to retrieve your location";
  }


  navigator.geolocation.getCurrentPosition(success, error);
}
export { geoFindMe }
