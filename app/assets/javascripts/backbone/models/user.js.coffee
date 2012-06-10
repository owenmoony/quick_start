class QuickStart.Models.User extends Backbone.Model
  paramRoot: 'user'
  url: ->
    "/users/#{@id}.json"

  defaults:
    login: null
    password: null
    password_confirm: null
    email: null

class QuickStart.Collections.UsersCollection extends Backbone.Collection
  model: QuickStart.Models.User
  url: '/users'
