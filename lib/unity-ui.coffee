addClass = (el, klass) ->
  return unless el
  el.className = "#{el.className} #{klass}"

removeClass = (el, klass) ->
  return unless el
  classes = el.className.split(' ')
  index = classes.indexOf(klass)
  classes.splice(index, 1) if index >= 0
  el.className = classes.join(' ')

module.exports =
  config:
    showIcons:
      type: 'boolean'
      default: false
    colorStatusIndicatorsInTreeView:
      type: 'boolean'
      default: false

  activate: (state) ->
    atom.config.observe 'unity-ui.showIcons', ->
      body = document.body
      if atom.config.get('unity-ui.showIcons')
        addClass(body, 'unity-ui-show-icons')
      else
        removeClass(body, 'unity-ui-show-icons')
    atom.config.observe 'unity-ui.colorStatusIndicatorsInTreeView', ->
      treeView = document.querySelector('.tree-view')
      if atom.config.get('unity-ui.colorStatusIndicatorsInTreeView')
        removeClass(treeView, 'unity-ui-fade-status')
      else
        addClass(treeView, 'unity-ui-fade-status')
