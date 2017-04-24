import React from 'react';
import { Link, hashHistory } from 'react-router';

const PathIndexItem = ({ path, deletePath }) => {
  // debugger
  const map = `https://maps.googleapis.com/maps/api/staticmap?size=100x100&path=weight:3%7Ccolor:red%7Cenc:${ path.polyline }&key=AIzaSyAguar0XlZ_56FFg9-1IzyO2nG0Rzngsrk`;

  const complete = (path.done) ? 'Yes' : 'No';

  return (
    <tr>
      <td><img src={ map } /></td>
      <td>{path.created_at.slice(0, 10)}</td>
      <td>{path.distance} mi</td>
      <td>{path.name}</td>
      <td>{path.start_address}</td>
      <td>{complete}</td>
      <td><button onClick={() => deletePath(path.id)}>Delete</button></td>
    </tr>
  );
};

export default PathIndexItem;
