# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->

  url_field = $("input[type='url']")
  if url_field.length > 0
    url_field.focusin ->
      unless url_field.val()
        url_field.val('https://')
    .focusout ->
      if url_field.val() == 'https://'
        url_field.val('')
