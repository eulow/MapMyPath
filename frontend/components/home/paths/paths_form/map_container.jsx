import React from 'react';

const initialPosition={ lat: 40.745209, lng: -73.993957 };

class Map extends React.Component {

  componentDidMount () {
    new google.maps.Map(this.refs.map, {
      center: initialPosition,
      zoom: 16
    });
  }

  render () {
    return (
      <div id="map" ref="map">
        I should be a map
      </div>
    );
  }
}

export default Map;
