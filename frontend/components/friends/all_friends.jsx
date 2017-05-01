import React from 'react';
import FriendsIndex from './friends_index';
import FriendRequestsIndex from './friend_requests_index';

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
      <div className='friends-main'>
        <FriendsIndex
          friends={this.props.friends}
          deleteFriend={this.props.deleteFriend}/>
        <FriendRequestsIndex
          friendRequests={this.props.friendRequests}
          addFriend={this.props.addFriend}
          deleteRequest={this.props.deleteRequest}/>
      </div>
    );
  }
}

export default AllFriends;
