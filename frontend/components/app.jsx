import React from 'react';
import MastheadContainer from './masthead/masthead_container';
import Frontpage from './frontpage/frontpage';

const App = ({ children }) => (
  <div>
    <MastheadContainer />
    { children }
  </div>
);

export default App;
