module.exports = (app, filters) ->

  app.get '/', filters, (req, res) ->
    res.render 'index',
      title: 'Express.js starter template'
