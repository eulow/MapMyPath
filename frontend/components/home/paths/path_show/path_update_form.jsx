import React from 'react';
import { convertTimeToSeconds } from '../../../../util/math_calculations';

class PathUpdateForm extends React.Component {
  constructor(props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
    this.setDuration = this.setDuration.bind(this);

    this.state = {
      description: "",
      done_date: ""
    };

    this.hours = 0;
    this.minutes = 0;
    this.seconds = 0;
  }

  componentDidMount () {
    this.setState(this.props.path);
  }

  handleSubmit(e) {
    e.preventDefault();
    const duration = convertTimeToSeconds(this.hours, this.minutes, this.seconds);
    const path = Object.assign({}, this.state, { duration }, { done: true });
    this.props.closeModal();
    this.props.updatePath(path);
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

  update(field) {
    return (e) => {
      this.setState({
        [field]: e.currentTarget.value
      });
    };
  }

  render () {
    return (
      <div className='path-update-form'>
        <h3>{this.props.path.name}</h3>
        <form className='path-form-input' onSubmit={this.handleSubmit}>
          <div>
            <label>When did you do this run?</label>
            <input
              type='date'
              value={this.state.done_date}
              onChange={this.update('done_date')}/>
          </div>
          <div>
            <label>How did it go?</label>
            <input
              className='description-input'
              type='text'
              value={this.state.description}
              onChange={this.update('description')}

              />
          </div>
          <div className='duration-container'>
            <label>How long did it take?</label>
            <input
              name='hours'
              type='tel'
              onChange={this.setDuration}
              placeholder='HH'
              max='24'
              maxLength='2'
            />:
            <input
              name='minutes'
              type='tel'
              onChange={this.setDuration}
              placeholder='MM'
              max='59'
              maxLength='2'
            />:
            <input
              name='seconds'
              type='tel'
              onChange={this.setDuration}
              placeholder='SS'
              max='59'
              maxLength='2'
            />
          </div>
          <div className='path-update-form-buttons'>
            <input type='submit' value='complete path' />
            <p>or</p>
            <div
              className='cancel-button'
              onClick={
                () => this.props.closeModal()
              }>Cancel
            </div>
          </div>
        </form>
      </div>
    );
  }

}

export default PathUpdateForm;
