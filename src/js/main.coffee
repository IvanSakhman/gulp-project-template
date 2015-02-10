React = require 'react'
$     = require 'jquery'

RadComponent = require './views/rad-component.cjsx'

$ ->
  React.render RadComponent({rad:"mos def"}),
      document.getElementById('container')
