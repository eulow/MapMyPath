import React from 'react';
import { Link, hashHistory } from 'react-router';

const PendingPathsItem = ({ paths }) => {
  return (
    <ul>
      {
        paths.map(path => {
         const map = `https://maps.googleapis.com/maps/api/staticmap?size=135x125&path=weight:3%7Ccolor:red%7Cenc:${ path.polyline }&key=AIzaSyAguar0XlZ_56FFg9-1IzyO2nG0Rzngsrk`;
         return (
           <li key={path.id}>
             <Link to={ `home/paths/${path.id}` }>
              <div>
               <img src={ map } />
              </div>
              <div className='map-details'>
               <p>{path.name}</p>
               <p>{path.distance } mi</p>
              </div>
             </Link>
           </li>
         );
       })
      }
    </ul>
  );
};

export default PendingPathsItem;
