import React from 'react';

const FriendsIndex = ({ friends, deleteFriend }) => {
  const friendListItem = (friend) => {
    return (
      <li key={friend.id}>
        <img className='avatar' src={ friend.img_url } />
        <div>
          <p>{ friend.first_name + " " + friend.last_name }</p>
          <button onClick={() => deleteFriend(friend.id)}>Unfriend</button>
        </div>
      </li>
    );
  };


  return (
    <div className='friends'>
      <h3>Friends</h3>
      <ul>
        {friends.map(friend => friendListItem(friend))}
      </ul>
    </div>
  );
};

export default FriendsIndex;
