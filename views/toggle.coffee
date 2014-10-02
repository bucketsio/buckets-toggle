Buckets = require 'buckets'

_ = Buckets._

tpl = require './../templates/toggle'

module.exports = class ToggleView extends Buckets.View
  template: tpl


  events:
    'click .uiswitch': 'toggleValue'

  toggleValue: (event) ->
    event.toElement.value = if event.toElement.value == 'true' then 'false' else 'true'

  initialize: ->
    super

  dispose: ->
    super
