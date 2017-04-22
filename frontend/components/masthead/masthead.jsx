import React from 'react';
import { Link } from 'react-router';

const sessionLinks = () => (
  <nav className="login-signup">
    <Link to="/login" className="login-button">Log in</Link>
    <Link to="/signup" className="signup-button">Sign up</Link>
  </nav>
);

const userInfo = (currentUser, signOut) => {
  function signOutMethod(e) {
    e.preventDefault();
    signOut();
  }

  // <button
  //   className="signout-button"
  //   onClick={signOutMethod}>
  //   log out
  // </button>
  return (
    <nav className="user-info">
      <ul id="drop-down-menu">
        <Link to="/friends" className="drop-down-button">Friends</Link>
        <Link to="/home/paths" className="drop-down-button">Paths</Link>
        <Link to="/home" className="drop-down-button">Home Page</Link>
        <button className="drop-down-button" onClick={signOutMethod}>
          Logout
        </button>
      </ul>
      <img className="avatar" src={window.images.sampleAvatar} />
    </nav>
  );
};

const Masthead = ({ currentUser, signOut, path }) => {
  // debugger
  let render = currentUser ? userInfo(currentUser, signOut) : sessionLinks();
  if (path === '/login' || path ==='/signup') {
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
};

export default Masthead;
