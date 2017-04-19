import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

import * as SessionAPIUtil from './util/session_api_util';
import { clearErrors, addErrors } from './actions/error_actions.js';
import { login } from './actions/session_actions';

window.clearErrors = clearErrors;
window.addErrors = addErrors;
window.signUp = SessionAPIUtil.signUp;
window.login = login;
window.signOut = SessionAPIUtil.signOut;


document.addEventListener("DOMContentLoaded", () => {
  let store;
  if (window.currentUser) {
    const preloadedState = { session: { currentUser: window.currentUser } };
    store = configureStore(preloadedState);
  } else {
    store = configureStore();
  }
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root);
});
