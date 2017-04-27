import React from 'react';
import MapManager from './map_manager';
import Modal from 'react-modal';

class Map extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      modalIsOpen: true
    };

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
      mapTypeControlOptions:
        {
          style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
        },
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

    this.MapManager = new MapManager(this.map, this.props.setState);

    this.map.addListener('click', (e) => {
      this.MapManager.addMarker(e.latLng);
    });

    this.map.addListener('idle', (e) => {
      this.setState({ modalIsOpen: false });
    });
  }

  clearMap (e) {
    e.preventDefault();

    if (this.MapManager.pathMarkers.length > 0) {
      this.MapManager.clearDirections();
      this.MapManager.pathMarkers[0].setMap(null);
      this.MapManager.pathMarkers = [];
    }
  }

  undoMap (e) {
    e.preventDefault();

    this.MapManager.undo();
  }

  render () {
    return (
      <div id="map-container">
        <Modal
          isOpen={this.state.modalIsOpen}
          overlayClassName="map-modal-overlay"
          className="map-modal-content"
          contentLabel="Example Modal"
        >
          <div className="map-loading">
            <p>Loading mapping tools</p>
            <div id="loading"></div>
            <p>Please wait</p>
          </div>
        </Modal>

        <div className="map-buttons">
          <button onClick={this.undoMap}>Undo</button>
          <button onClick={this.clearMap}>Clear</button>
        </div>
        <div id="map" ref="map">
        </div>
      </div>
    );
  }
}

export default Map;
