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

  componentWillReceiveProps(nextProps) {
    if (this.props.formType !== nextProps.formType) {
      this.setState({
        email: "",
        first_name: "",
        last_name: "",
        password: ""
      });
      this.props.clearErrors();
    }
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
    this.props.processForm(user).then(() => this.props.router.push('/home'));
  }

  renderLoginErrors({ login }) {
    if(login) {
      return (
        <div className="errors">{login}.</div>
      );
    }
  }
  //sign up errors
  renderFirstNameError({ first_name }) {
    if(first_name) {
      return (
        <div className="errors">First name {first_name}.</div>
      );
    }
  }
  renderLastNameError({ last_name }) {
    if(last_name) {
      return (
        <div className="errors">Last name {last_name}.</div>
      );
    }
  }
  renderEmailError({ email }) {
    if(email) {
      return (
        <div className="errors">Email {email}.</div>
      );
    }
  }
  renderPasswordError({ password }) {
    if(password) {
      return (
        <div className="errors">Password {password}.</div>
      );
    }
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
          <div className="guest-login" onClick={this.loginGuest}>
            Log in as guest
          </div>

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

          {this.renderFirstNameError(this.props.errors)}
          <div className="input-container">
            <input
              className="input-box"
              type="text"
              value={this.state.last_name}
              onChange={this.update("last_name")}
              placeholder="Last name"
              />
          </div>

          {this.renderLastNameError(this.props.errors)}
          <div className="input-container">
            <input
              className="input-box"
              type="text"
              value={this.state.email}
              onChange={this.update("email")}
              placeholder="Email"
              />
          </div>
          {this.renderEmailError(this.props.errors)}
          <div className="input-container">
            <input
              className="input-box"
              type="password"
              value={this.state.password}
              onChange={this.update("password")}
              placeholder="Password"
              />
          </div>
          {this.renderPasswordError(this.props.errors)}
          <input type="submit" value="sign up" />
        </form>
      );
    } else {
      return (
        <form className="auth-form" onSubmit={this.handleSubmit}>
          {this.renderToggle('login')}
          <div className="guest-login" onClick={this.loginGuest}>
            Log in as guest
          </div>
          <div className="or-bar">
            <span className="bar" />
              <span className="or">OR</span>
            <span className="bar" />
          </div>
          <div className="input-container">
            <input
              className="input-box"
              type="email"
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
          {this.renderLoginErrors(this.props.errors)}
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
