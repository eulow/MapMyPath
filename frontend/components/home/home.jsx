import React from 'react';
import { Link } from 'react-router';

class Home extends React.Component {
  constructor(props) {
    super(props);

    this.selectedTab = this.selectedTab.bind(this);
  }

  selectedTab(tab) {
    // debugger
    if (tab === this.props.location.pathname) {
      return "selected";
    }
    return "";
  }

  render () {
    return (
      <div className='main-content-container'>
        <div className='header-container'>
          <section className="profile-tabs-container">
            <div className="profile-tabs">
              <Link
                to={'/home/activity_feed'}
                className={this.selectedTab('/home/activity_feed')} >
                Activity Feed
              </Link>
              <Link
                to={'/home/user_dashboard'}
                className={this.selectedTab('/home/user_dashboard')} >
                My Dashboard
              </Link>
              <Link to={'/home/paths'}
                className={this.selectedTab('/home/paths')}>
                My Paths
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

export default Home;
