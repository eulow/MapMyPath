import React from 'react';
import { Link } from 'react-router';

class ProfileTabs extends React.Component {
  constructor(props) {
    super(props);
  }


  render () {
    return (
      <div className="profile-tabs">
        <Link to={'/home/activity_feed'}>
          Activity Feed
        </Link>
        <Link to={'home/user_dashboard'}>
          My Dashboard
        </Link>
        <Link to={'home/routes'}>
          Create Routes
        </Link>
      </div>
    );
  }
}

export default ProfileTabs;
