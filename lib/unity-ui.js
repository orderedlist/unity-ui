(function() {
  UnityUiHelper = require('./unity-ui-helper');

  module.exports = {
    configDefaults: {
      allowTreeViewToScrollHorizontally: false
    },
    activate: function() {
      var unityUiHelper = new UnityUiHelper();

      atom.config.observe('unity-ui.allowTreeViewToScrollHorizontally', (function(_this) {
        return function() {
          unityUiHelper.updateTreeViewScroller();
        };
      })(this));
    }
  };

}).call(this);
