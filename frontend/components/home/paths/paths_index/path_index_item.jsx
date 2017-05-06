import React from 'react';
import { Link, withRouter } from 'react-router';

const PathIndexItem = ({ path, deletePath, router }) => {
  const map = `https://maps.googleapis.com/maps/api/staticmap?size=80x80&path=weight:3%7Ccolor:red%7Cenc:${ path.polyline }&key=AIzaSyAguar0XlZ_56FFg9-1IzyO2nG0Rzngsrk`;
  const complete = (path.done) ? 'Yes' : 'No';
  return (
    <tr>
      <td><Link to={ `home/paths/${path.id}` }><img src={ map } /></Link></td>
      <td className='no-wrap'>{path.created_at.slice(0, 10)}</td>
      <td className='no-wrap'>{path.distance} mi</td>
      <td>{path.name}</td>
      <td className='no-wrap'>{path.start_address}</td>
      <td>{complete}</td>
      <td>
        <button onClick={() => router.push(`home/paths/${path.id}`)}>View</button>
        <button onClick={() => deletePath(path.id).then(() => router.push(`/home/paths/`))}>Delete</button>
      </td>
    </tr>
  );
};

export default withRouter(PathIndexItem);
