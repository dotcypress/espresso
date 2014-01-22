express = require 'express'

module.exports.config = (app) ->
  app.configure 'production', ()->
    app.use express.static 'assets', { maxAge: 86400000 }

  app.configure 'development', () ->
    app.use express.static 'assets'
    app.use express.logger()
    app.use express.responseTime()

  app.configure () ->
    app.enable 'trust proxy'
    app.set 'views', __dirname + '/../views'
    app.set 'view engine', 'ejs'
    app.use express.cookieParser()
    app.use express.bodyParser()
    app.use express.favicon()
    app.use app.router

  app.configure 'development', () ->
    app.use express.errorHandler()
