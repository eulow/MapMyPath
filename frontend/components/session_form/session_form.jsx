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
    this.props.processForm({ user }).then(() => this.redirectIfSignedIn());
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

  renderForm () {
    if(this.props.formType === 'signup') {
      return (
        <form className="auth-form" onSubmit={this.handleSubmit}>
          {this.renderToggle('signup')}
          <input
            className="input-box"
            type="text"
            value={this.state.first_name}
            onChange={this.update("first_name")}
            className="login-input"
            placeholder="First name"
          />
          <input
            className="input-box"
            type="text"
            value={this.state.last_name}
            onChange={this.update("last_name")}
            className="login-input"
            placeholder="Last name"
          />
          <input
            className="input-box"
            type="text"
            value={this.state.email}
            onChange={this.update("email")}
            className="login-input"
            placeholder="Email"
          />
          <input
            className="input-box"
            type="password"
            value={this.state.password}
            onChange={this.update("password")}
            className="login-input"
            placeholder="Password"
          />
          <input type="submit" value="sign up" />
        </form>
      );
    } else {
      return (
        <form className="auth-form" onSubmit={this.handleSubmit}>
          {this.renderToggle('login')}
          <input
            className="input-box"
            type="text"
            value={this.state.email}
            onChange={this.update("email")}
            className="login-input"
            placeholder="Email"
          />
          <input
            className="input-box"
            type="password"
            value={this.state.password}
            onChange={this.update("password")}
            className="login-input"
            placeholder="Password"
          />
          <input type="submit" value="login" />
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
