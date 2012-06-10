class QuickStart.Routers.UsersRouter extends Backbone.Router
  initialize: (options) ->
    @users = new QuickStart.Collections.UsersCollection()

  routes:
    "users/new"      : "newUser"
    "users/:id/edit" : "edit"
    "users/:id"      : "show"

#  newUser: ->
#    @view = new QuickStart.Views.Users.NewView(collection: @users)
#    $("#users").html(@view.render().el)

  show: (id) ->
    QuickStart.app.showUser(id)

#  edit: (id) ->
#    user = @users.get(id)
#
#    @view = new QuickStart.Views.Users.EditView(model: user)
#    $("#users").html(@view.render().el)
