import React from 'react';
import { Provider } from 'react-redux';

// react router
import { Router, Route, IndexRoute, hashHistory } from 'react-router';

// react components
import App from './app';
import SessionFormContainer from './session_form/session_form_container';
import Frontpage from './frontpage/frontpage';
import Home from './home/home';


const Root = ({ store }) => {
  const _ensureLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (!currentUser) {
      replace('/');
    }
  };

  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (currentUser) {
      replace('/home');
    }
  };

  return (
    <Provider store={ store }>
      <Router history={ hashHistory }>
        <Route path='/' component={ App }>
          <IndexRoute
            component={ Frontpage }
            onEnter={ _redirectIfLoggedIn} />

          <Route
            path='/login'
            component={ SessionFormContainer }
            onEnter={ _redirectIfLoggedIn} />
          <Route
            path='/signup'
            component={ SessionFormContainer }
            onEnter={ _redirectIfLoggedIn} />

          <Route
            path='/home'
            component={ Home }
            onEnter={ _ensureLoggedIn} >
            <Route
              path='activity_feed'
              component={ Home } />
          </Route>

        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
