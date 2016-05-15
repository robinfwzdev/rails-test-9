@sort_change = ->
  $('select#shoe_sort').on 'change', ->
    sort = $('select#shoe_sort').val()
    $.removeCookie('shoes_sort')
    $.cookie('shoes_sort', sort)
    $('#new_shoe_filter').submit()
  return