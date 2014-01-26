express = require 'express'
hub = require './lib/hub'

routes = require './config/routes'
app = require './config/app'
view_engine = require './config/view_engine'

express = express()

# configuration
app.config express
view_engine.config express
routes.config express

port = process.env.PORT || 3000

express.listen port
