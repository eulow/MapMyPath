import React from 'react';

class FriendSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      search: ''
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.renderSearchResults = this.renderSearchResults.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.requestAllPotentialFriends(this.state.search);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  renderSearchResults() {
    if (this.props.potentialFriends.length > 0) {
      return (
        <ul className='results-list'>
          { this.props.potentialFriends.map((friend => {
            return (
              <li key={ friend.id }>
                <img className='avatar' src={ friend.img_url } />
                <div>
                  <p>{ friend.first_name + " " + friend.last_name }</p>
                  <button onClick={() => this.props.addRequest(friend.id)}>Add</button>
                </div>
              </li>
            );
          }))}
        </ul>
      );
    }
  }

  render () {

    return (
      <div className='friends-search'>
        <header>
          <h2>Find MapMyPath friends by first name, last name, or email:</h2>
          <form className="search-form" onSubmit={this.handleSubmit}>
            <input
              className="input-box"
              type="text"
              value={this.state.search}
              onChange={this.update("search")}
              />
            <input type="submit" value="search" />
          </form>
        </header>
        {this.renderSearchResults()}
      </div>
    );
  }
}

export default FriendSearch;
