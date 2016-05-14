var Shoes = React.createClass({
  getInitialState() {
    return { shoes: [] };
  }, 
  render() {
    var ShoeNodes = this.props.shoes.map(function (shoe) {
      return (
        <Shoe shoe={shoe} key={shoe.id} />
      );
    });
    return (
      <div className="ShoesList">
        {ShoeNodes}
      </div>
    );
  }
});