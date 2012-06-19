(function() {
  var Search;

  Search = (function() {

    function Search() {}

    Search.prototype.findMatches = function() {
      var _this = this;
      return $('.tag').each(function(index, element) {
        var search_value, text;
        text = $(element).html().toLowerCase();
        search_value = $("#search_input").val().toLowerCase();
        if (text.indexOf(search_value) !== -1) {
          return $(element).parent("tr").show();
        } else {
          return $(element).parent("tr").hide();
        }
      });
    };

    return Search;

  })();

  $(document).ready(function() {
    var search;
    search = new Search;
    $("#search_input").keyup(function() {
      return search.findMatches();
    });
    return $("#clear").click(function() {
      $("#search_input").val('');
      return search.findMatches();
    });
  });

}).call(this);
