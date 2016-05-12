@Shoe = React.createClass
  render: ->
    React.DOM.div
      className: 'item col-md-4'
      React.DOM.div
        className: 'name'
        @props.shoe.name
      React.DOM.div
        className: 'sku'
        @props.shoe.sku
      React.DOM.div
        className: 'price'
        @props.shoe.price    