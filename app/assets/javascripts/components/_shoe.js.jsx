var Shoe = React.createClass({
  render () {
    return (
      <div className="products-product-container">
        <div className="thumbnails">
          <img src={ this.props.picture } />
        </div>
        <div className="name">
          { this.props.shoe.name }
        </div>
        <div className="sku">
          { this.props.shoe.sku }
        </div>
        <div className="price">
          { this.props.shoe.price }
        </div>
      </div>
      )
  }
});