React = require 'react'
$     = require 'jquery'

RadComponent = React.createFactory(require('./components/rad-component.cjsx'))

$ ->
  React.render RadComponent({rad:"mos def"}),
      document.getElementById('container')
