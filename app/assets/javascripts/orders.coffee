# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	loadPrice()
	$('#order_material_id').change ->
		loadPrice()

loadPrice = ->
	$price = $('#order_material_id option:selected').data('price')
	$('#order_price').val $price + '$'

initMap = ->
  map = new (google.maps.Map)(document.getElementById('map'),
    center:
      lat: -34.397
      lng: 150.644
    zoom: 6)
  infoWindow = new (google.maps.InfoWindow)(map: map)
  # Try HTML5 geolocation.
  if navigator.geolocation
    navigator.geolocation.getCurrentPosition ((position) ->
      pos = 
        lat: position.coords.latitude
        lng: position.coords.longitude
      infoWindow.setPosition pos
      infoWindow.setContent 'Location found.'
      map.setCenter pos
      return
    ), ->
      handleLocationError true, infoWindow, map.getCenter()
      return
  else
    # Browser doesn't support Geolocation
    handleLocationError false, infoWindow, map.getCenter()
  return

handleLocationError = (browserHasGeolocation, infoWindow, pos) ->
  infoWindow.setPosition pos
  infoWindow.setContent if browserHasGeolocation then 'Error: The Geolocation service failed.' else 'Error: Your browser doesn\'t support geolocation.'
  return