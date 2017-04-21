import React from 'react';
import MastheadContainer from './masthead/masthead_container';
import Frontpage from './frontpage/frontpage';

const App = ({children, location}) => {
  return (
    <div>
      <MastheadContainer location={location}/>
      {children}
    </div>
  );
};

export default App;
