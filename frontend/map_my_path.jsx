import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import Modal from 'react-modal';

import * as SessionAPIUtil from './util/session_api_util';
import { clearErrors, addErrors } from './actions/error_actions.js';
import { login } from './actions/session_actions';
import * as PathsAPIUtil from './util/paths_api_util';
import { requestAllPaths, requestSinglePath } from './actions/path_actions';
import { requestAllFriends } from './actions/friend_actions';
import { requestAllRequests} from './actions/friend_actions';


window.clearErrors = clearErrors;
window.addErrors = addErrors;
window.signUp = SessionAPIUtil.signUp;
window.login = login;
window.signOut = SessionAPIUtil.signOut;
window.getAllPaths = PathsAPIUtil.getAllPaths;
window.requestAllPaths = requestAllPaths;
window.requestSinglePath = requestSinglePath;
window.requestAllFriends = requestAllFriends;
window.requestAllRequests = requestAllRequests;

document.addEventListener("DOMContentLoaded", () => {
  let store;
  if (window.currentUser) {
    const preloadedState = { session: { currentUser: window.currentUser } };
    store = configureStore(preloadedState);
  } else {
    store = configureStore();
  }
  window.store = store;
  Modal.setAppElement(document.body);
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root);
});
