import React from 'react';
import { Link } from 'react-router';

// class Masthead extends React.Component {
//   constructor(props) {
//     super(props);
//     this.rightNav = this.rightNav.bind(this);
//     this.signOutMethod = this.signOutMethod.bind(this);
//   }
//
//   signOutMethod(e) {
//     e.preventDefault();
//     this.signOut();
//   }
//
//   rightNav() {
//     if(this.path !== '/') {
//       return (<div></div>);
//     } else if(this.currentUser) {
//       return (
//         <nav className="user-info">
//           <img className="avatar" src={window.images.sampleAvatar} />
//           <button
//             className="signout-button"
//             onClick={this.signOutMethod}>
//             log out
//           </button>
//         </nav>
//       );
//     } else {
//       return (
//         <nav className="login-signup">
//           <Link to="/login" className="login-button">Log in</Link>
//           <Link to="/signup" className="signup-button">Sign up</Link>
//         </nav>
//       );
//     }
//   }
//
//   render () {
//     // debugger
//
//     return(
//       <div className="masthead">
//         <Link to='/' className="logo">
//           <h1 className="title">mapmypath</h1>
//         </Link>
//
//         {this.rightNav()}
//
//       </div>
//     );
//   }
// }

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

  return (
    <nav className="user-info">
      <img className="avatar" src={window.images.sampleAvatar} />
      <button
        className="signout-button"
        onClick={signOutMethod}>
        log out
      </button>
    </nav>
  );
};

const Masthead = ({ currentUser, signOut }) => {
  const render = currentUser ? userInfo(currentUser, signOut) : sessionLinks();
  // debugger

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
