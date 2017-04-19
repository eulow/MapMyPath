import React from 'react';
import { Link } from 'react-router';

const sessionLinks = () => (
  <nav className="login-signup">
    <Link to="/login" className="login-button">Log in</Link>
    <Link to="/signup" className="signup-button">Sign up</Link>
  </nav>
);

const userInfo = (currentUser, signOut) => (
  <nav className="user-info">
    <img className="avatar" src={window.images.sampleAvatar} />
  </nav>
);

const Masthead = ({ currentUser, signOut, path }) => {
  const render = currentUser ? userInfo(currentUser, signOut) : sessionLinks();

  return (
    <div className="masthead">
      <Link to='/' className="logo">
        <h1 className="title">mapmypath</h1>
      </Link>

      {render}

    </div>
  );
};

export default Masthead;
