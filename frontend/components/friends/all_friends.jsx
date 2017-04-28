import React from 'react';
import FriendsIndex from './friends_render';
import FriendRequestsIndex from './friend_requests_render';

class AllFriends extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestAllRequests();
    this.props.requestAllFriends();
  }

  render () {
    return (
      <div>
        <FriendsIndex
          friends={this.props.friends}
          deleteFriend={this.props.deleteFriend}/>

      </div>
    );
  }
}

// <FriendRequestsIndex
//   friends={this.props.friendRequests}
//   addFriend={this.props.addFriend}
//   deleteRequest={this.props.deleteRequest}
//   />
export default AllFriends;
