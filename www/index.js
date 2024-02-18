var exec = require('cordova/exec');

var PLUGIN_NAME = 'KakaoTalkExecute';

exports.toast = function (arg0, success, error) {
    exec(success, error, PLUGIN_NAME, 'execute', [arg0]);
};
