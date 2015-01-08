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
  configDefaults:
    allowTreeViewToScrollHorizontally: false

  activate: (state) ->
    atom.config.observe 'unity-ui.allowTreeViewToScrollHorizontally', ->
      scroller = document.getElementsByClassName('tree-view-scroller')[0]
      if atom.config.get('unity-ui.allowTreeViewToScrollHorizontally')
        addClass(scroller, 'tree-view-scrolls-horizontally')
      else
        removeClass(scroller, 'tree-view-scrolls-horizontally')

    useragent = navigator.userAgent

    if matches = useragent.match(/Mac OS X 10_([0-9]+)_[0-9]+/i)
      version = parseInt(matches[1], 10)
      osstyle = if version >= 10 then 'unity-mac-new' else 'unity-mac-old'
      addClass(document.body, osstyle)
