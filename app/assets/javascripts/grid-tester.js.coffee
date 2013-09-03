$ ->
  $("#grid-tester .trigger").click ->
    $(this).find(".show").toggle()
    $(this).find(".hide").toggle()
    $(this).parents("#grid-tester").find(".vertical-grid").toggle()