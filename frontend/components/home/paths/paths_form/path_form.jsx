import { connect } from 'react-redux';
import React from 'react';


// import CreatePath from './create_path';
import Map from './map_container';

class PathForm extends React.Component {
  render () {
    return (
      <div>
        <Map />
      </div>
    );
  }
}

export default PathForm;
