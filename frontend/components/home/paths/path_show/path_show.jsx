import React from 'react';
import { Link } from 'react-router';
import Comments from './comments';

class PathShow extends React.Component {
  constructor(props) {
    super(props);

    this.createMap = this.createMap.bind(this);
  }

  componentDidMount () {
    this.props.requestSinglePath(this.props.params.id)
    .then(
      () => {
        this.createMap();
      }
    );
    // this.props.requestAllComments(this.props.params.id);
  }

  createMap () {
    const { path } = this.props;
    this.map = new google.maps.Map(this.refs.map, {
      center: { lat: 40.745209, lng: -73.993957 },
      zoom: 16,
      mapTypeControlOptions:
        {
          style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
        }
    });

    const decodedPath = google.maps.geometry.encoding.decodePath(path.polyline);
    const polyPath = new google.maps.Polyline({
      path: decodedPath,
      strokeColor: '#ff4d4d',
      strokeOpacity: .6,
      strokeWeight: 5
    });

    const startMarker = new google.maps.Marker({
      position: decodedPath[0],
      map: this.map,
      label: 'A'
    });

    const endMarker = new google.maps.Marker({
      position: decodedPath[decodedPath.length - 1],
      map: this.map,
      label: 'B'
    });

    const bounds = new google.maps.LatLngBounds();

    const polyPathBounds = polyPath.getPath();
    for (let i = 0; i < polyPathBounds.length; i++) {
      bounds.extend(polyPathBounds.getAt(i));
    }

    this.map.fitBounds(bounds);
    polyPath.setMap(this.map);
  }

  convertSecondsToTime (sec_num) {
    let hours   = Math.floor(sec_num / 3600);
    let minutes = Math.floor((sec_num - (hours * 3600)) / 60);
    let seconds = sec_num - (hours * 3600) - (minutes * 60);

    if (hours   < 10) {hours   = "0"+hours;}
    if (minutes < 10) {minutes = "0"+minutes;}
    if (seconds < 10) {seconds = "0"+seconds;}
    return (hours+':'+minutes+':'+seconds);
  }

  render () {
    if(this.props.path) {
      const { path } = this.props;

      const duration = () => {
        if (path.duration === 0) {
          return (
            <p>--</p>
          );
        } else {
          return (
            <p>{this.convertSecondsToTime(path.duration)}</p>
          );
        }
      };

      return (
        <div className='path-show-body'>
          <div className='path-content'>
            <header>
              <h2>
                { path.name }
              </h2>
            </header>
            <section className='path-info'>
              <div className='distance-duration'>
                <span className='distance'>
                  <h3>Distance</h3>
                  <p>{ path.distance }</p>
                  <h5>miles</h5>
                </span>

                <span className='duration'>
                  <h3>Completion time</h3>
                  {duration()}
                </span>
              </div>
            </section>
            <div id='path-show-map' ref='map'></div>
          </div>
          <section className='side-bar'>
            <nav>
              <Link to='/home/paths'>My Paths</Link>
              <Link to='/home/paths/new'>New Path</Link>
              <button onClick={
                  () => this.props.deletePath(path.id)
                }>Delete
              </button>
            </nav>
            <Comments
              comments={this.props.comments}
              createComment={this.props.createComment}
              deleteComment={this.props.deleteComment}
            />
          </section>
        </div>
      );
    } else {
      return <div></div>;
    }
  }
}


export default PathShow;
