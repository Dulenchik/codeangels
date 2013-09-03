# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $(document).ready(function() {
#   $("select").hide();
# });

$ ->
  $(".list").hide()

  $(".select").bind("click", ->
    $(".list").toggle())

  $(".option").bind("click", ->
    text = $(@).html()
    $("#select-value").val(text)
    $(".select").html(text)
    $(".list").toggle())  

  $(".icon-caret-down").bind("click", ->
    text = $(@).html()
    $("#select-value").val(text)
    $(".select").html(text)
    $(".list").toggle())