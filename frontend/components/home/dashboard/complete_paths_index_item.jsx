import React from 'react';
import { Link } from 'react-router';
import { convertSecondsToTime } from '../../../util/math_calculations';

const CompletePathsItem = ({ paths }) => {
  return (
    <ul>
      {
        paths.map(path => {
         const map = `https://maps.googleapis.com/maps/api/staticmap?size=120x100&path=weight:3%7Ccolor:red%7Cenc:${ path.polyline }&key=AIzaSyAguar0XlZ_56FFg9-1IzyO2nG0Rzngsrk`;
         return (
           <li key={path.id}>
             <div>
               <Link to={ `home/paths/${path.id}` }><img src={ map } /></Link>
             </div>
             <div className='stats'>
               <h4>Distance</h4>
               <p>{path.distance} mi</p>
             </div>
             <div className='stats duration'>
               <h4>Duration</h4>
               <p>{convertSecondsToTime(path.duration)}</p>
             </div>
             <div className='stats'>
               <h4>Date</h4>
               <p>{path.done_date || '--'}</p>
             </div>
           </li>
         );
       })
      }
    </ul>
  );
};

export default CompletePathsItem;
