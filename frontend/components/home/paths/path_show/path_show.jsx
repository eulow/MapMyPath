import React from 'react';
import { hashHistory } from 'react-router';
import Comments from './comments';
import { convertSecondsToTime } from '../../../../util/math_calculations';


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
    this.props.requestAllComments(this.props.params.id);

  }

  componentWillUnmount() {
    this.props.clearErrors();
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

  render () {
    if(this.props.path) {
      const {
        path,
        currentUser,
        comments,
        deleteComment,
        createComment,
        errors
      } = this.props;

      const duration = () => {
        if (path.duration === 0) {
          return (
            <p>--</p>
          );
        } else {
          return (
            <p>{convertSecondsToTime(path.duration)}</p>
          );
        }
      };

      const complete = () => {
        if (path.done_date) {
          return (
            <dd>{path.done_date}</dd>
          );
        } else {
          return (
            <dd>--</dd>
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
                  <h3>Time</h3>
                  {duration()}
                  <h5>hh : mm : ss</h5>
                </span>
              </div>
              <dl className='body-content'>
                <span>
                  <dt>Begins in:</dt>
                  <dd>{ path.start_address }</dd>
                </span>
                <span>
                  <dt>Ends in:</dt>
                  <dd>{ path.end_address }</dd>
                </span>
                <span>
                  <dt>Created by:</dt>
                  <dd>{ path.user.name }</dd>
                </span>
                <span>
                  <dt>Description:</dt>
                  <dd>{ path.description }</dd>
                </span>
                <span>
                  <dt>Completed on:</dt>
                  {complete()}
                </span>
              </dl>
            </section>
            <div id='path-show-map' ref='map'></div>
          </div>
          <section className='side-bar'>
            <nav>
              <button onClick={
                  () => hashHistory.push('/home/paths')
                }>all paths
              </button>
              <button onClick={
                  () => hashHistory.push('/home/paths/new')
                }>create a path
              </button>
              <button onClick={
                  () => this.props.deletePath(path.id)
                }>Delete this path
              </button>
            </nav>
            <Comments
              currentUser={currentUser}
              comments={comments}
              createComment={createComment}
              deleteComment={deleteComment}
              errors={errors}
              pathId={path.id}
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
