@Shoes = React.createClass
  getInitialState: ->
    shoes: @props.data
  getDefaultProps: ->
    shoes: []
  render: ->
    React.DOM.div
      className: 'shoes-container'
      React.DOM.h2
        className: 'title'
        'Shoes'
      React.DOM.div
        className: 'shoes-list'
        for shoe in @state.shoes
          React.createElement Shoe, key: shoe.id, shoe: shoe