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