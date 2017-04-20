import * as SessionAPIUtil from '../util/session_api_util';
import { clearErrors, addErrors } from './error_actions';
import { hashHistory } from 'react-router';

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";

export const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const login = (user) => dispatch => {
  return (
    SessionAPIUtil.login(user)
      .then(
        (currentUser) => {
          dispatch(receiveCurrentUser(currentUser));
          dispatch(clearErrors());
          hashHistory.push('/my_home');
          // dispatches receiveCurrentUser session action and clear error action
        },
        (errors) => {
          dispatch(addErrors(errors));
         // dispatches error action to error reducer
        }
      )
  );
};

export const signOut = () => dispatch => {
  return (
    SessionAPIUtil.signOut()
    .then((currentUser) => {
      dispatch(receiveCurrentUser(null));
      hashHistory.push('/');
    })
  );
};


export const signUp = (user) => dispatch => (
  SessionAPIUtil.signUp(user)
  .then(
    (currentUser) => {
      dispatch(receiveCurrentUser(currentUser));
      dispatch(clearErrors());
      hashHistory.push('/my_home');
      // dispatches receiveCurrentUser session action and clear error action
    },
    (errors) => {
      dispatch(addErrors(errors));
      // dispatches error action to error reducer
    }
  )
);
