import React from 'react';

const FriendRequestsIndex = ({ friendRequests, addFriend, deleteRequest }) => {
  const friendListItem = (friend) => {
    return (
      <li key={friend.id}>
        <img className='avatar' src={ friend.img_url } />
        <div>
          <p>{ friend.first_name + " " + friend.last_name }</p>
          <nav>
            <button onClick={() => addFriend(friend.id)}>Confirm</button>
            <button onClick={() => deleteRequest(friend.id)}>Deny</button>
          </nav>
        </div>
      </li>
    );
  };

  if (friendRequests.length > 0) {
    return (
      <div className='friends'>
        <h3>Friend Requests</h3>
        <ul>
          {friendRequests.map(friend => friendListItem(friend))}
        </ul>
      </div>
    );
  } else {
    return "";
  }

};

export default FriendRequestsIndex ;
