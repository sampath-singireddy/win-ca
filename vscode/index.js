var cfg = require('vscode').workspace.getConfiguration('win-ca')

require('win-ca/api')({
  async: true,
  fallback: true,
  $ave: cfg.save,
  inject: 'append' == cfg.inject ? '+' : 'none' != cfg.inject
})

exports.activate = activate

function activate() {
}
