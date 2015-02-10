React = require('react')

radStore   = require '../stores/RadStore'
radActions = require '../actions/RadActions'

module.exports = React.createClass

  componentDidMount: ->
    @unsubscribe = radStore.getState.onValue (value) =>
      @setState value

  componentWillUnmount: ->
    @unsubscribe()

  getInitialState: ->
    tmp = null
    radStore.getState.onValue((value) ->
      tmp = value
    )() #unsubscribe the handler
    tmp

  onMoreRads: ->
    radActions.incrementRadsBy.push 1

  onLessRads: ->
    radActions.incrementRadsBy.push -1

  render: ->
    <div className="rad-component">
      <p>is this component rad? {@state.amountOfRads}</p>
      <button type="button" onClick={@onMoreRads}>Sí</button>
      <button type="button" onClick={@onLessRads}>No</button>
    </div>
