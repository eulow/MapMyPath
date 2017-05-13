import React from 'react';
import { Link } from 'react-router';

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
      <header>
        <h2>Friends</h2>
        <Link to={'/home'} className='back-button'>Back to home page</Link>
      </header>
      <ul>
        {friends.map(friend => friendListItem(friend))}
      </ul>
    </div>
  );
};

export default FriendsIndex;
