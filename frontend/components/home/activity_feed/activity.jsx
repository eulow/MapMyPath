import React from 'react';
import Profile from '../profile_container';

import ActivityIndexItem from './activity_index_item';

class Activity extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount () {
    this.props.requestAllFriends();
    this.props.requestAllPaths();
  }

  render () {
    return (
      <div className='activities'>
        <div className='activities-body'>
          <header>
            <h2 className='path-show-header'>
              recent activities
            </h2>
          </header>
          <ActivityIndexItem
            activities={this.props.activities}
            currentUser={this.props.currentUser}
            />
        </div>
        <Profile currentUser={this.props.currentUser} />
      </div>
    );
  }
}

export default Activity;
