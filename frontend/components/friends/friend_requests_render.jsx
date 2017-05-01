import React from 'react';

class FriendRequestsIndex extends React.Component {
  constructor(props) {
    super(props);

    this.friendListItem = this.friendListItem.bind(this);
  }

  friendListItem (friend) {
    return (
      <li key={friend.id}>
        <img className='avatar' src={ friend.img_url } />
        <div>
          <p>{ friend.first_name + " " + friend.last_name }</p>
          <nav>
            <button onClick={() => this.props.addFriend(friend.id)}>Confirm</button>
            <button onClick={() => this.props.deleteRequest(friend.id)}>Deny</button>
          </nav>
        </div>
      </li>
    );
  }

  render () {
    if (this.props.friendRequests.length > 0) {
      return (
        <div className='friends'>
          <h3>Friend Requests</h3>
          <ul>
            {this.props.friendRequests.map(friend => this.friendListItem(friend))}
          </ul>
        </div>
      );
    } else {
      return <div></div>;
    }
  }
}

// return (
//   <div>hi</div>
// );
export default FriendRequestsIndex ;
