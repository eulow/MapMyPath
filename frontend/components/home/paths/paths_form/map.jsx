import React from 'react';
import MapManager from './map_manager';

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
      rotateControl: true,
      mapTypeControlOptions: {
      style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
      },
      // mapTypeControl: false,
      // streetViewControl: false,
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

    this.MapManager = new MapManager(this.map);

    this.map.addListener('click', (e) => {
      this.MapManager.addMarker(e.latLng);
    });
  }

  clearMap (e) {
    e.preventDefault();

    if (this.MapManager.pathMarkers.length > 0) {
      this.MapManager.clearDirections();
      this.MapManager.pathMarkers[0].setMap(null);
      this.MapManager.pathMarkers = [];
      // this.createMap(this.map.getCenter(), this.map.getZoom());
    }
  }

  undoMap (e) {
    e.preventDefault();

    this.MapManager.undo();

    //** MOVED CODE TO ROUTE MANAGER **//

    // let markers = this.MapManager.pathMarkers;
    // if (markers.length > 2) {
    //   this.MapManager.pathMarkers.pop();
    //   this.MapManager.getDirections(this.MapManager.pathMarkers);
    // } else if (markers.length === 2) {
    //   let marker = markers[0];
    //   // this.createMap(this.map.getCenter(), this.map.getZoom());
    //   this.MapManager.clearDirections();
    //   this.MapManager.pathMarkers = [];
    //   this.MapManager.addMarker(marker.position);
    // } else if (markers.length === 1) {
    //   // this.createMap(this.map.getCenter(), this.map.getZoom());
    //   this.clearMap();
    // }
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
