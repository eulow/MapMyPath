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

  componentDidMount () {
    this.props.requestAllPaths();
  }

  totalDistance () {
    // debugger
    if (this.props.completePaths.length > 0) {
      return (
        this.props.completePaths.reduce(
          (firstPath, path) => {
            return firstPath.distance + path.distance;
          }
        )
      );
    }

    return <div></div>;
  }

  totalTime () {
    if (this.props.completePaths.length > 0) {
      const timeInSeconds = this.props.completePaths
      .reduce(
        (firstPath, path) => {
          return firstPath.duration + path.duration;
        }
      );
      return convertSecondsToTime(timeInSeconds);
    }
    return <div></div>;
  }

  render () {
    return (
      <div className='dashboard'>
        <div className='dashboard-body'>
          <div className='run-stats'>
            <span className='distance'>
              <h3>Distance</h3>
              <p>{ this.totalDistance() }</p>
              <h5>miles</h5>
            </span>
            <span className='duration'>
              <h3>Time</h3>
              { this.totalTime() }
              <h5>hh : mm : ss</h5>
            </span>
            <span className='duration'>
              <h3>Runs</h3>
              { this.props.completePaths.length }
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
