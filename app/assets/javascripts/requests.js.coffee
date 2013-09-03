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
    $(".select").html($(@).html())
    $(".list").toggle())  

  $(".icon-caret-down").bind("click", ->
    $(".select").html($(@).html())
    $(".list").toggle())