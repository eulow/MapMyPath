import React from 'react';
import MarkerManager from './marker_manager';

const initialPosition={ lat: 40.745209, lng: -73.993957 };

class Map extends React.Component {

  componentDidMount () {
    this.map = new google.maps.Map(this.refs.map, {
      center: initialPosition,
      zoom: 15,
      mapTypeControl: false,
      streetViewControl: false,
      styles: [
        {
          "featureType": "administrative",
          "stylers": [
            {
              "visibility": "on"
            }
          ]
        },
        {
          "featureType": "landscape.man_made",
          "stylers": [
            {
              "visibility": "on"
            }
          ]
        },
        {
          "featureType": "landscape.natural",
          "stylers": [
            {
              "visibility": "on"
            }
          ]
        },
        {
          "featureType": "poi",
          "stylers": [
            {
              "saturation": -35
            },
            {
              "lightness": -15
            },
            {
              "visibility": "off"
            }
          ]
        },
        {
          "featureType": "poi.medical",
          "stylers": [
            {
              "visibility": "on"
            }
          ]
        },
        {
          "featureType": "poi.park",
          "stylers": [
            {
              "visibility": "simplified"
            }
          ]
        },
        {
          "featureType": "poi.school",
          "stylers": [
            {
              "visibility": "on"
            }
          ]
        },
        {
          "featureType": "transit",
          "stylers": [
            {
              "visibility": "off"
            }
          ]
        },
        {
          "featureType": "water",
          "stylers": [
            {
              "visibility": "on"
            }
          ]
        }
      ]
    });

    this.MarkerManager = new MarkerManager(this.map);
  }

  render () {
    // debugger
    return (
      <div id="map" ref="map">
        I should be a map
      </div>
    );
  }
}

export default Map;
