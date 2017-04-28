import React from 'react';
import { Link } from 'react-router';

class FriendsTab extends React.Component {
  constructor(props) {
    super(props);
    this.selectedTab = this.selectedTab.bind(this);
  }

  selectedTab(tab) {
    if (this.props.location.pathname.includes(tab)) {
      return "selected";
    }
    return "unselected";
  }

  render () {
    return (
      <div className='friends-content-container'>
        <div className='friends-header-container'>
          <section className="friends-tabs-container">
            <div className="friends-tabs">
              <Link
                to={'/friends/all'}
                className={this.selectedTab('/friends/all')} >
                My Friends
              </Link>
              <Link
                to={'/friends/search'}
                className={this.selectedTab('/friends/search')} >
                Find Friends
              </Link>
              <div className="end-border"></div>
            </div>
          </section>
        </div>

        {this.props.children}
      </div>
    );
  }
}

export default FriendsTab;
