$(document).ready ->
  $('#new_shoe_filter input').change ->
    $('#new_shoe_filter').submit()
  price_slider()
    
price_slider = ->
  price_slider = document.getElementById('price_slider')
  noUiSlider.create price_slider,
    start: [
      0
      200
    ]
    connect: true
    step: 1
    pips:
      mode: 'values'
      values: [
        0
        50
        100
        150
        200
      ]
      density: 1
    range:
      'min': 0
      'max': 200
    format: wNumb(decimals: 0)
  price_slider.noUiSlider.on 'change', (values, handle) ->
    price_change(values)
    return  
  price_slider.noUiSlider.on 'update', (values, handle) ->
    price_change(values)  
    return

price_change = (values) ->
  $('#shoe_filter_min_price').val values[0]
  $('#shoe_filter_max_price').val values[1]
  $('#new_shoe_filter').submit()   