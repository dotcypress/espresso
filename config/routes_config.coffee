registerController = (app, name, filters=[]) ->
  controller = require "./../controllers/#{name}"
  controller app, filters

module.exports.config = (app) ->
  registerController app, 'main'

