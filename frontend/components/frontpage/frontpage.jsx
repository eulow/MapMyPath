import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router';
import { login } from '../../actions/session_actions';

class Frontpage extends React.Component {
  constructor(props) {
    super(props);

    this.loginGuest = this.loginGuest.bind(this);
  }

  loginGuest () {
    const guest = {
      email: "Guest",
      password: "Password"
    };
    this.props.login(guest).then(() => this.props.router.push('/home'));
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
              <button className="guest-login" onClick={this.loginGuest}>
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
        <div className="footer">
          <div className="features">
            <div>
              <div><i className="fa fa-map-marker fa-5x" aria-hidden="true"></i></div>
              <h3>Map your route</h3>
              <p>Know where you're going, see where you've been. Be bold and create your own runs.</p>
            </div>
            <div>
              <div><i className="fa fa-pencil fa-5x" aria-hidden="true"></i></div>
              <h3>Track your activity</h3>
              <p>Record your activity, track your speed, track your runs.</p>
            </div>
            <div>
              <div><i className="fa fa-users fa-5x" aria-hidden="true"></i></div>
              <h3>Share with friends</h3>
              <p>Add a social twist to your exercise routine. Get extra encourgement, cheer on your buddies.</p>
            </div>

          </div>
        </div>
      </div>
    );
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
    login: (guest) => dispatch(login(guest))
  };
};

export default connect(
  null,
  mapDispatchToProps
)(Frontpage);
