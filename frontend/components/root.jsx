import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from './app';
import SessionFormContainer from './session_form/session_form_container';
import Frontpage from './frontpage/frontpage';


const Root = ({ store }) => (
  <Provider store={ store }>
    <Router history={ hashHistory }>
      <Route path='/' component={ App }>
        <IndexRoute component={ Frontpage } />
        <Route path='/login' component={ SessionFormContainer } />
        <Route path='/signup' component={ SessionFormContainer } />
      </Route>
    </Router>
  </Provider>
);

export default Root;
