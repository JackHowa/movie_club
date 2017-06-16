$(document).ready(function() {
  $("#searches-container").on("keyup", "form", function() {
    event.preventDefault();
    console.log("keyuppp");

    $searchForm = $(this);

    var request = $.ajax({
      url: $searchForm.attr("action"),
      method: $searchForm.attr("method"),
      data: $searchForm.serialize()
    })

    request.done(function(response) {
      $("body").find("#searched-movies").remove();
      $searchForm.append(response);
    })
  })
});
