express = require 'express'
hub = require './lib/hub'

routes = require './config/routes'
app = require './config/app'

express = express()

# configuration
app.config express
routes.config express

port = process.env.PORT || 3000

express.listen port
