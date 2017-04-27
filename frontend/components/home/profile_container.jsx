import React from 'react';
import { Link } from 'react-router';

const Profile = ({ currentUser }) => {
  return (
    <div className='profile-box'>
      <img src={ currentUser.img_url } />
      <span>
        <p>{currentUser.first_name + ' ' + currentUser.last_name}</p>
        <Link to='/friends'>Friends</Link>
      </span>
    </div>
  );
};

export default Profile;
