var ShoesContainer = React.createClass({
  componentWillMount(){
    this.fetchShoes();
  },

  fetchShoes() {

    $.ajax({
        url: this.props.shoesPath,
        
        dataType: 'json',
        
        success: function(data) {
          this.setState({shoes: data});
        }.bind(this),

        error: function(data) {
          this.setState({shoes: []});
        }.bind(this)
      });
  },

  searchShoes(event) {
    if (event.target.value) {
      $.ajax({
          url: this.props.searchPath+"?query="+event.target.value,
          
          dataType: 'json',
          
          success: function(data) {
            this.setState({shoes: data});
          }.bind(this),

          error: function(data) {
            this.setState({shoes: []});
          }.bind(this)
        });
    }
    else{
      this.fetchShoes();
    }

  },
  
  getInitialState() {
    return { shoes: [] };
  },

  render() {
    return (
      <div>
        <Shoes shoes={this.state.shoes} />
        <ShoesSearch searchPath={this.props.searchPath} submitPath={this.searchShoes} cancelPath={this.fetchShoes}/>
      </div>
    );

  }
});