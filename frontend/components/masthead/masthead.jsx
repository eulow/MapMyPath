import React from 'react';
import { Link, withRouter } from 'react-router';

class Masthead extends React.Component {
  constructor(props) {
    super(props);

    this.userInfo = this.userInfo.bind(this);
    this.signOut = this.signOut.bind(this);
  }

  sessionLinks () {
    return (
      <nav className="login-signup">
        <Link to="/login" className="login-button">Log in</Link>
        <Link to="/signup" className="signup-button">Sign up</Link>
      </nav>
    );
  }

  signOut(e) {
    e.preventDefault();
    this.props.signOut().then(
      () => {
        this.props.router.push('/');
      }
    );
  }

  userInfo () {
    return (
      <nav className="user-info">
        <ul id="drop-down-menu">
          <Link to="/friends" className="drop-down-button">Friends</Link>
          <Link to="/home/paths" className="drop-down-button">Paths</Link>
          <Link to="/home" className="drop-down-button">Home Page</Link>
          <button className="drop-down-button" onClick={this.signOut}>
            Logout
          </button>
        </ul>
        <img className="avatar" src={this.props.currentUser.img_url} />
      </nav>
    );
  }


  render () {
    let render = this.props.currentUser ? this.userInfo() : this.sessionLinks();
    if (this.props.path === '/login' || this.props.path ==='/signup') {
      render = <div></div>;
    }

    return (
      <div className='masthead-container'>

        <div className="masthead">
          <Link to='/' className="logo">
            <h1 className="title">mapmypath</h1>
          </Link>

          {render}
        </div>
      </div>
    );
  }
}

export default withRouter(Masthead);
