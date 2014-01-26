express = require 'express'
hbs = require 'hbs'

module.exports.config = (app) ->
  app.configure 'production', ()->
    app.use express.static 'assets', { maxAge: 86400000 }

  app.configure 'development', () ->
    app.use express.static 'assets'
    app.use express.logger()
    app.use express.responseTime()

  app.configure () ->
    app.enable 'trust proxy'
    app.use express.cookieParser()
    app.use express.bodyParser()
    app.use express.favicon()
    app.use app.router

  app.configure 'development', () ->
    app.use express.errorHandler()
