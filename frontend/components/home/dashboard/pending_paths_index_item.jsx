import React from 'react';
import { Link } from 'react-router';

const PendingPathsItem = ({ paths }) => {
  return (
    <ul>
      {
        paths.map(path => {
         const map = `https://maps.googleapis.com/maps/api/staticmap?size=135x125&path=weight:3%7Ccolor:red%7Cenc:${ path.polyline }&key=AIzaSyBygQhRnDSS9s1hu7jxsQMu3mwIU7Hd2N4`;
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
