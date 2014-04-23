# Checks to see if the window is full screen
# This file can be removed if Atom ever adds full-screen detection natively

{$} = require 'atom'

module.exports =
  activate: (state) ->
    $(window).on 'resize', @checkFullscreen

    @checkFullscreen()

  checkFullscreen: ->
    if $(window).height() + 1 >= screen.height
      atom.workspaceView.addClass 'unity-ui-fullscreen'
    else
      atom.workspaceView.removeClass 'unity-ui-fullscreen'
