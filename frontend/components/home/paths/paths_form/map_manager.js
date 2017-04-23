export default class MapManager {
  constructor(map) {
    this.map = map;
    this.pathMarkers = [];

    this.directionsService = new google.maps.DirectionsService;
    this.directionsRenderer = new google.maps.DirectionsRenderer(
      {
        map: this.map,
        preserveViewport: true,
      }
    );

    this.getDirections = this.getDirections.bind(this);
    this.renderDirections = this.renderDirections.bind(this);
    this.addMarker = this.addMarker.bind(this);
    this.clearDirections = this.clearDirections.bind(this);
  }

  addMarker(position) {
    const marker = new google.maps.Marker({
      position,
      map: this.map,
      label: 'A'
    });

    this.pathMarkers.push(marker);

    const markers = this.pathMarkers;

    if (markers.length > 1) {
      markers[0].setMap(null);
      marker.setMap(null);
      this.getDirections(markers);
    }
  }

  clearDirections() {
    this.directionsRenderer.setMap(null);
    this.directionsRenderer = new google.maps.DirectionsRenderer(
      {
        map: this.map,
        preserveViewport: true,
      }
    );
  }

  undo() {
    let markers = this.pathMarkers;

    if (markers.length > 2) {
      this.pathMarkers.pop();
      this.getDirections(this.pathMarkers);
    } else if (markers.length === 2) {
      let marker = markers[0];
      // this.createMap(this.map.getCenter(), this.map.getZoom());
      this.clearDirections();
      this.pathMarkers = [];
      this.addMarker(marker.position);
    } else if (markers.length === 1) {
      this.clearDirections();
      this.pathMarkers[0].setMap(null);
      this.pathMarkers = [];
    }
  }

  getDirections(markers) {
    const waypoints = markers
      .slice(1, markers.length - 1)
      .map(marker => {
        return {
          location: marker.position,
          stopover: false
        };
      });

    this.directionsService.route(
      {
        origin: markers[0].position,
        destination: markers[markers.length - 1].position,
        waypoints: waypoints,
        optimizeWaypoints: true,
        travelMode: "WALKING"
      }, (response) => {
        this.renderDirections(response);
      }
    );
  }

  renderDirections(response) {
    const route = response.routes[0];
    this.polyline = route.overview_polyline;
    this.distance = route.legs[0].distance.text;
    this.start_address = route.legs[0].start_address;
    this.end_address = route.legs[0].end_address;
    this.directionsRenderer.setDirections(response);
  }
}
