setup = ->

  $(document).foundation();

$ ->

  console.log "Loading page...!  " + Date.now()%10000

  setup()

  document.addEventListener "turbolinks:load", () ->

  console.log "turbolinks:load "  + Date.now()%10000

    setup()

() ->
  $(document).foundation()
