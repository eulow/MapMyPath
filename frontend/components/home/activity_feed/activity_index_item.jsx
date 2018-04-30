import React from 'react';
import { Link } from 'react-router';
import { FormattedRelative } from 'react-intl';

const ActivityIndexItem = ({ paths }) => {
  const activityRender = (activity) => {
    const map = `https://maps.googleapis.com/maps/api/staticmap?size=278x160&path=weight:3%7Ccolor:red%7Cenc:${ activity.polyline }&key=AIzaSyBygQhRnDSS9s1hu7jxsQMu3mwIU7Hd2N4`;
    if (activity.done) {
      return (
        <li key={activity.id}>
          <img className='avatar' src={ activity.user.img_url } />
          <div className='activity-body'>
            <span>
              <p>{ activity.user.name} ran { activity.distance } miles</p>
              <i className="fa fa-universal-access fa-2x fa-activity" aria-hidden="true"></i>
            </span>
            <Link to={ `home/paths/${activity.id}` }>
              <div>
                <img src={ map } />
              </div>
              <div className='activity-details'>
                <i className="fa fa-road fa-2x" aria-hidden="true"></i>
                <p>distance</p>
                <p className='distance'>{ activity.distance } mi</p>
              </div>
            </Link>
            <p className='bottom'><i className="fa fa-user-o fa-1x" aria-hidden="true"></i><FormattedRelative value={activity.updated_at} /></p>
          </div>
        </li>
      );
    } else {
      return (
        <li key={activity.id}>
          <img className='avatar' src={ activity.user.img_url } />
          <div className='activity-body'>
            <span>
              <p>{ activity.user.name} created the { activity.name } path</p>
              <i className="fa fa-map-marker fa-2x fa-activity" aria-hidden="true"></i>
            </span>
            <Link to={ `home/paths/${activity.id}` }>
              <div className='activity-details'>
                <i className="fa fa-road fa-2x" aria-hidden="true"></i>
                <p>distance</p>
                <p className='distance'>{ activity.distance } </p> mi
              </div>
              <div>
                <img src={ map } />
              </div>
            </Link>
            <p className='bottom'><i className="fa fa-user-o fa-1x" aria-hidden="true"></i><FormattedRelative value={activity.updated_at} /></p>
          </div>
        </li>
      );
    }
  };

  return (
    <ul>
      {
        paths.map(activity => {
          return (activityRender(activity));
        })
      }
    </ul>
  );
};


export default ActivityIndexItem;
