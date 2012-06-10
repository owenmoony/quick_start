#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.QuickStart =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}

  app: {
    start: ->
      window.router = new QuickStart.Routers.UsersRouter()
      Backbone.history.start()
      @el = $("#applicationContainer")
      @el.append("<div id='users'>bar</div>")

    showUser: (id) ->
      model = new QuickStart.Models.User({id: id})
      console.log("users", $("#users").get(0))
      view = new QuickStart.Views.Users.ShowView({model: model, el: $("#users").get(0)})
      

  }
