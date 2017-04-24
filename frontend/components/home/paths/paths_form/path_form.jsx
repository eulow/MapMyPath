import React from 'react';
import Map from './map';
import { Link } from 'react-router';
// import Modal from 'react-modal';

class PathForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      name: "",
      distance: 0,
      start_address: "N/A",
      end_address: "N/A",
      polyline: "",
      duration: 0,
      done: false,
      done_date: "",
      description: ""
    };
    this.hours = 0;
    this.minutes = 0;
    this.seconds = 0;

    this.handleSubmit = this.handleSubmit.bind(this);
    this.convertDuration = this.convertDuration.bind(this);
    this.setDuration = this.setDuration.bind(this);
  }

  update(field) {
    return (e) => {
      this.setState({
        [field]: e.currentTarget.value
      });
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    const path = Object.assign({}, this.state, { duration: this.convertDuration() });
    this.props.createPath(path);
  }

  convertDuration () {
    const hoursSeconds = this.hours * 3600;
    const minutesSeconds = this.minutes * 60;
    const seconds = this.seconds;
    return (hoursSeconds + minutesSeconds + seconds);
  }

  setDuration(e) {
    const name = e.currentTarget.name;
    switch(name) {
      case 'hours':
        this.hours = parseInt(e.currentTarget.value);
        break;
      case 'minutes':
        this.minutes = parseInt(e.currentTarget.value);
        break;
      case 'seconds':
        this.seconds = parseInt(e.currentTarget.value);
        break;
    }
  }

  renderNameError({ name }) {
    if(name) {
      return (
        <div className="errors">Name {name}.</div>
      );
    }
  }

  renderPolylineError({ polyline }) {
    if(polyline) {
      return (
        <div className="errors">
          You must have at least two points on the map to save a route.
        </div>
      );
    }
  }

  render () {
    return (
      <div className='create-path'>
        <header>
          <h2>Create a Path</h2>
          <Link to={'/home/paths/all'} className='back-button'>Back to all paths</Link>
        </header>
        <div className='path-main'>
          <div className='path-form'>
            <section className='path-details'>
              <h3>Path Details</h3>
              <ul>
                <li>
                  <h4 className='details-heading'>Distance:</h4>
                  <p>{this.state.distance} miles</p>
                </li>
                <li>
                  <h4 className='details-heading'>Start:</h4>
                  <p className='address'>{this.state.start_address}</p>
                </li>
                <li>
                  <h4 className='details-heading'>End:</h4>
                  <p className='address'>{this.state.end_address}</p>
                </li>
              </ul>
            </section>
            <form className='path-form-input' onSubmit={this.handleSubmit}>
              <h3>Save your path</h3>
              {this.renderPolylineError(this.props.errors)}
              <div className='input-container'>
                <input
                  className='name-input'
                  type='text'
                  value={this.state.name}
                  onChange={this.update('name')}
                  placeholder='Name this path'
                  />
              </div>
              {this.renderNameError(this.props.errors)}
              <div className='select-container'>
                <select name='complete' onChange={this.update('done')}>
                  <option value='false'>
                    I am going to do this run
                  </option>
                  <option value='true'>
                    I have done this run
                  </option>
                </select>
              </div>
              <div className={this.state.done}>
                <input
                  className='description-input'
                  type='text'
                  value={this.state.description}
                  onChange={this.update('description')}
                  placeholder='Describe your run'
                  />
              </div>
              <div id='date-container' className={this.state.done}>
                <input type='date'
                  onChange={this.update('done_date')}/>
              </div>
              <div id='duration-container' className={this.state.done}>
                <input
                  name='hours'
                  type='tel'
                  onChange={this.setDuration}
                  placeholder='HH'
                  max='24'
                  maxLength='2'/>:
                  <input
                    name='minutes'
                    type='tel'
                    onChange={this.setDuration}
                    placeholder='MM'
                    max='59'
                    maxLength='2'/>:
                    <input
                      name='seconds'
                      type='tel'
                      onChange={this.setDuration}
                      placeholder='SS'
                      max='59'
                      maxLength='2'/>
                  </div>
                  <input type='submit' value='save path' />
                </form>
              </div>
              <Map setState={this.setState.bind(this)}/>
            </div>

      </div>
    );
  }
}

export default PathForm;
