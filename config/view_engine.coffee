express = require 'express'
hbs = require 'hbs'

module.exports.config = (app) ->
  hbs.registerPartials "#{__dirname}/../views/partials"

  app.configure () ->
    app.set 'views', __dirname + '/../views'
    app.set 'view engine', 'hbs'
