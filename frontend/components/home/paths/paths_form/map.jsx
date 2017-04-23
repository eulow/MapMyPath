import React from 'react';
import RouteManager from './route_manager';

class Map extends React.Component {
  constructor(props) {
    super(props);

    this.createMap = this.createMap.bind(this);
    this.clearMap = this.clearMap.bind(this);
    this.undoMap = this.undoMap.bind(this);
  }

  componentDidMount () {
    const initialPosition = { lat: 40.745209, lng: -73.993957 };

    navigator.geolocation.getCurrentPosition(
      (position) => {
        this.createMap(
          { lat: position.coords.latitude, lng: position.coords.longitude }
        );
      }, (error) => {
        this.createMap(initialPosition);
      }
    );
  }

  createMap (initialPosition, zoom) {
    zoom = zoom || 15;

    this.map = new google.maps.Map(this.refs.map, {
      center: initialPosition,
      zoom,
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
    
    this.routeManager = new RouteManager(this.map);

    this.map.addListener('click', (e) => {
      this.routeManager.addMarker(e.latLng);
    });
  }

  clearMap (e) {
    this.createMap(this.map.getCenter(), this.map.getZoom());
  }

  undoMap (e) {
    let markers = this.routeManager.pathMarkers;
    if (markers.length > 2) {
      this.routeManager.pathMarkers.pop();
      this.routeManager.getDirections(this.routeManager.pathMarkers);
    } else if (markers.length === 2) {
      let marker = markers[0];
      this.createMap(this.map.getCenter(), this.map.getZoom());
      this.routeManager.addMarker(marker.position);
    } else {
      this.createMap(this.map.getCenter(), this.map.getZoom());
    }
  }

  render () {
    return (
      <div id="map-container">
        <div className="map-buttons">
          <button onClick={this.undoMap}>Undo</button>
          <button onClick={this.clearMap}>Clear</button>
        </div>
        <div id="map" ref="map">
          <p>Loading mapping tools</p>
          <div id="loading"></div>
          <p>Please wait</p>
        </div>
      </div>
    );
  }
}

export default Map;
