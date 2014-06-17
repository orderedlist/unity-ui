(function() {
  var _ref, $, UnityUiHelper;

  _ref = require('atom'), $ = _ref.$;

  module.exports = UnityUiHelper = (function() {

    function UnityUiHelper() {

    }

    UnityUiHelper.prototype.updateTreeViewScroller = function() {
      if(atom.config.get('unity-ui.allowTreeViewToScrollHorizontally')) {
        $('.tree-view-scroller').addClass('tree-view-scrolls-horizontally');
      } else {
        $('.tree-view-scroller').removeClass('tree-view-scrolls-horizontally');
      }
    };

    return UnityUiHelper;

  })();

}).call(this);
