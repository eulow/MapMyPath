import React from 'react';
import { Provider } from 'react-redux';


// react router
import { Router, Route, IndexRoute, hashHistory, IndexRedirect } from 'react-router';

// react components
import App from './app';
import SessionFormContainer from './session_form/session_form_container';
import Frontpage from './frontpage/frontpage';
import Home from './home/home';

// paths
import PathsMain from './home/paths/paths_main';
import PathFormContainer from './home/paths/paths_form/path_form_container';
import PathIndexContainer from './home/paths/paths_index/path_index_container';
import PathShowContainer from './home/paths/path_show/path_show_container';

// dashboard
import DashboardContainer from './home/dashboard/dashboard_container';

// activities
import ActivityContainer from './home/activity_feed/activity_container';

// friends
import FriendsTabs from './friends/friends_tab';

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
            <IndexRedirect to='activity_feed' />

            <Route
              path='activity_feed'
              component={ ActivityContainer } />

            <Route
              path='user_dashboard'
              component={ DashboardContainer } />

            <Route path='paths' component={ PathsMain }>
              <IndexRedirect to='all' />
              <Route path='all' component ={ PathIndexContainer } />
              <Route path='new' component={ PathFormContainer } />
              <Route path=':id' component={ PathShowContainer } />
            </Route>
          </Route>
          <Route
            path='/friends'
            component={ FriendsTabs }
            onEnter={ _ensureLoggedIn }
          />
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
