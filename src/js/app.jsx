/*** @jsx React.DOM */

var React = require('react');

var APP = React.createClass({
    render:function(){
        return (
                <h1>Hello World</h1>
            )
    }
});

React.renderComponent(<APP />, document.body)
