import React from 'react';
import { Link } from 'react-router';

const Profile = ({ currentUser }) => {
  if(currentUser) {
    return (
      <div className='profile-box'>
        <img src={ currentUser.img_url } />
        <span>
          <p>Hello,</p>
          <p className='name'>{currentUser.first_name + ' ' + currentUser.last_name}</p>
          <Link to='/friends'>Friends</Link>
        </span>
      </div>
    );
  } else {
    return <div></div>;
  }
};

export default Profile;
