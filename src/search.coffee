class Search
  @search_box = $("#search_input")

  findMatches: ->
    $('.tag').each (index, element) =>
      text = $(element).html().toLowerCase()
      search_value = @search_box.val().toLowerCase()

      if ( text.indexOf( search_value ) != -1 )
        $(element).parent("tr").show()
      else
        $(element).parent("tr").hide()

$(document).ready ->
  search = new Search
  search_box = $("#search_input")

  search_box.keyup ->
    search.findMatches()

  $("#clear").click ->
    search_box.val('')
    search.findMatches()