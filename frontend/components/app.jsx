import React from 'react';
import MastheadContainer from './masthead/masthead_container';
import { IntlProvider } from 'react-intl';

const App = ({ children, location }) => {
  return (
    <IntlProvider locale="en">
      <div>
        <MastheadContainer location={location}/>
        {children}
      </div>
    </IntlProvider>
  );
};

export default App;
