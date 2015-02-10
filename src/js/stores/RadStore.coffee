Bacon = require 'baconjs'

radActions = require '../actions/RadActions'

radAmount = Bacon.update(
  0,
  radActions.incrementRadsBy, (rads, rad) -> rads + rad
)

module.exports =
  getState: Bacon.combineTemplate
    amountOfRads: radAmount
