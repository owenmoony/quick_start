QuickStart.Views.Users ||= {}

class QuickStart.Views.Users.ShowView extends Backbone.View
  template: JST["backbone/templates/users/show"]

  initialize: (options) ->
    console.log("init")
    console.log("el1", @el)
    super(options)
    console.log("model", @model)
    $(@el).append("foo")
    console.log("el2", @el)
    @model.fetch  success: =>
      console.log("got it")
      @render()

  render: ->
#    $(@el).html(@template(@model.toJSON()))
#    console.log("el2", @el)
    return this
