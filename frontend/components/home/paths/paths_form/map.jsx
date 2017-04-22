import React from 'react';
import RouteManager from './route_manager';

// const initialPosition={ lat: 40.745209, lng: -73.993957 };

class Map extends React.Component {
  constructor(props) {
    super(props);

    this.createMap = this.createMap.bind(this);
  }

  componentDidMount () {
    let initialPosition = { lat: 40.745209, lng: -73.993957 };

    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          this.createMap(
            { lat: position.coords.latitude, lng: position.coords.longitude }
          );
        }
      );
    } else {
      this.createMap(initialPosition);
    }
  }

  createMap (initialPosition) {
    this.map = new google.maps.Map(this.refs.map, {
      center: initialPosition,
      zoom: 15,
      mapTypeControl: false,
      streetViewControl: false,
      draggableCursor: 'crosshair',
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
    const routeManager = new RouteManager(this.map);

    this.map.addListener('click', (e) => {
      routeManager.addMarker(e.latLng);
    });
  }

  render () {
    return (
      <div id="map" ref="map">
        <p>Loading mapping tools</p>
        <div id="loading"></div>
        <p>Please wait</p>
      </div>
    );
  }
}

export default Map;
