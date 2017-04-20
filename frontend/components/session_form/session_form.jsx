import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      email: "",
      first_name: "",
      last_name: "",
      password: ""
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.loginGuest = this.loginGuest.bind(this);
  }

  componentDidUpdate() {
    this.redirectIfSignedIn();
  }

  redirectIfSignedIn() {
    if (this.props.signedIn) {
      this.props.router.push('/');
    }
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
    this.props.processForm(user).then(() => this.redirectIfSignedIn());
  }

  renderErrors() {

  }

  renderToggle (formType) {
    if(formType === 'signup') {
      return (<Link to="/login" className="toggle-button">Log in</Link>);
    } else {
      return (<Link to="/signup" className="toggle-button">Sign up</Link>);
    }
  }

  loginGuest(e) {
    e.preventDefault();
    const guest = {
      email: "Guest",
      password: "Password"
    };
    this.props.loginGuest(guest);
  }

  renderForm () {
    if(this.props.formType === 'signup') {
      return (
        <form className="auth-form" onSubmit={this.handleSubmit}>
          {this.renderToggle('signup')}
          <button className="guest-login" onClick={this.loginGuest}>
            Log in as guest
          </button>
          <div className="or-bar">
            <span className="bar" />
              <span className="or">OR</span>
            <span className="bar" />
          </div>
          <div className="input-container">
            <input
              className="input-box"
              type="text"
              value={this.state.first_name}
              onChange={this.update("first_name")}
              placeholder="First name"
              />
          </div>
          <div className="input-container">
            <input
              className="input-box"
              type="text"
              value={this.state.last_name}
              onChange={this.update("last_name")}
              placeholder="Last name"
              />
          </div>
          <div className="input-container">
            <input
              className="input-box"
              type="text"
              value={this.state.email}
              onChange={this.update("email")}
              placeholder="Email"
              />
          </div>
          <div className="input-container">
            <input
              className="input-box"
              type="password"
              value={this.state.password}
              onChange={this.update("password")}
              placeholder="Password"
              />
          </div>
          <input type="submit" value="sign up" />
        </form>
      );
    } else {
      return (
        <form className="auth-form" onSubmit={this.handleSubmit}>
          {this.renderToggle('login')}
          <button className="guest-login" onClick={this.loginGuest}>
            Log in as guest
          </button>
          <div className="or-bar">
            <span className="bar" />
              <span className="or">OR</span>
            <span className="bar" />
          </div>
          <div className="input-container">
            <input
              className="input-box"
              type="text"
              value={this.state.email}
              onChange={this.update("email")}
              placeholder="Email"
              />
          </div>
          <div className="input-container">
            <input
              className="input-box"
              type="password"
              value={this.state.password}
              onChange={this.update("password")}
              placeholder="Password"
              />
          </div>
          <input type="submit" value="log in" />
        </form>
      );
    }
  }

  render () {
    return (
      <div className="auth-form-container">
        {this.renderForm()}
      </div>
    );
  }
}

export default withRouter(SessionForm);
