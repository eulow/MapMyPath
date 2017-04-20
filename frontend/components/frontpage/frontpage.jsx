import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router';
import { login } from '../../actions/session_actions';

class Frontpage extends React.Component {
  constructor(props) {
    super(props);
  }

  render () {
    return(
      <div className="front-page">
        <div className="frontpage-content">
          <section>
            <h1>Make every mile count, join free today</h1>
            <h3>You pound the pavement, we provide the motivation.
              Plan each stride and learn from every route with MapMyPath.
            </h3>
            <nav className="login-signup">
              <button className="guest-login" onClick={this.props.loginGuest}>
                Log in as guest
              </button>
              <div className="or">or</div>
              <Link to="/signup" className="signup-button">Sign up with email</Link>
            </nav>
            <div className="login">
              <p>Already a member?</p>
              <Link to="/login" className="login-button">Log in</Link>
            </div>
          </section>
        </div>
        <div>
          footer
        </div>
      </div>
    );
  }
}

const mapDispatchToProps = (dispatch) => {
  const guest = {
    email: "Guest",
    password: "Password"
  };
  return { loginGuest: () => dispatch(login(guest)) };
};

export default connect(
  null,
  mapDispatchToProps
)(Frontpage);
