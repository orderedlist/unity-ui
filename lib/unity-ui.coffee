{$} = require 'atom'

module.exports =
  configDefaults:
    allowTreeViewToScrollHorizontally: false

  activate: (state) ->
      atom.config.observe 'unity-ui.allowTreeViewToScrollHorizontally', ->
        if atom.config.get('unity-ui.allowTreeViewToScrollHorizontally')
          $('.tree-view-scroller').addClass('tree-view-scrolls-horizontally')
        else
          $('.tree-view-scroller').removeClass('tree-view-scrolls-horizontally')

      $(window).on 'resize', @checkFullscreen

      @checkFullscreen()

  checkFullscreen: ->
    if $(window).height() + 1 >= screen.height
      atom.workspaceView.addClass 'unity-ui-fullscreen'
    else
      atom.workspaceView.removeClass 'unity-ui-fullscreen'
