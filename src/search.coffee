class Search
  findMatches: ->
    $('.tag').each (index, element) =>
      text = $(element).html().toLowerCase()
      search_value = $("#search_input").val().toLowerCase()

      if ( text.indexOf( search_value ) != -1 )
        $(element).parent("tr").show()
      else
        $(element).parent("tr").hide()

$(document).ready ->
  search = new Search

  $("#search_input").keyup ->
    search.findMatches()

  $("#clear").click ->
    $("#search_input").val('')
    search.findMatches()