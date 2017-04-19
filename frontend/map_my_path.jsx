import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

import * as SessionAPIUtil from './util/session_api_util';

window.signUp = SessionAPIUtil.signUp;
window.signIn = SessionAPIUtil.signIn;
window.signOut = SessionAPIUtil.signOut;

document.addEventListener("DOMContentLoaded", () => {
  const store = configureStore();
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root);
});
