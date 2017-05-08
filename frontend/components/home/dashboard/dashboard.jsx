import React from 'react';
import PendingPathsItem from './pending_paths_index_item';
import CompletePathsItem from './complete_paths_index_item';
import Profile from '../profile_container';
import { convertSecondsToTime } from '../../../util/math_calculations';

class Dashboard extends React.Component {
  constructor(props) {
    super(props);

    this.totalDistance = this.totalDistance.bind(this);
    this.totalTime = this.totalTime.bind(this);
  }

  componentWillMount () {
    this.props.requestAllPaths();
  }

  componentWillUnmount () {
    this.props.clearPaths();
  }

  totalDistance () {
    if (this.props.completePaths.length > 0) {
      let result = 0;
      for (let i = 0; i < this.props.completePaths.length; i++) {
        result += this.props.completePaths[i].distance;
      }
      return result.toFixed(2);
    }

    return "";
  }

  totalTime () {
    if (this.props.completePaths.length > 0) {
      let result = 0;
      for (let i = 0; i < this.props.completePaths.length; i++) {
        result += this.props.completePaths[i].duration;
      }
      return convertSecondsToTime(result);
    }
    return "";
  }

  render () {
    return (
      <div className='dashboard'>
        <div className='dashboard-body'>
          <header>
            <h2 className='path-show-header'>
              life time stats
            </h2>
          </header>
          <div className='run-stats'>
            <span className='distance'>
              <h3>Distance</h3>
              <p>{ this.totalDistance() }</p>
              <h5>miles</h5>
            </span>
            <span className='duration'>
              <h3>Time</h3>
              <p>{ this.totalTime() }</p>
              <h5>hh : mm : ss</h5>
            </span>
            <span className='duration'>
              <h3>Runs</h3>
              <p>{ this.props.completePaths.length }</p>
              <h5>completed</h5>
            </span>
          </div>
          <div className='pending-runs'>
            <h3>Pending runs</h3>
            <PendingPathsItem paths={this.props.pendingPaths} />
          </div>
          <div className='complete-runs'>
            <h3>Completed runs</h3>
            <CompletePathsItem paths={this.props.completePaths} />
          </div>
        </div>
        <div className='profile'>
          <Profile currentUser={this.props.currentUser} />
        </div>
      </div>
    );
  }
}


export default Dashboard;
