import * as SessionAPIUtil from '../util/session_api_util';
import { clearErrors, addErrors } from './error_actions';

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
          // dispatches receiveCurrentUser session action and clear error action
        },
        (errors) => {
          dispatch(addErrors(errors));
         // dispatches error action to error reducer
        }
      )
  );
};

export const signOut = () => dispatch => (
  SessionAPIUtil.signOut()
  .then(currentUser => dispatch(receiveCurrentUser(null)))
);

export const signUp = (user) => dispatch => (
  SessionAPIUtil.signUp(user)
  .then(
    (currentUser) => {
      dispatch(receiveCurrentUser(currentUser));
      dispatch(clearErrors());
      // dispatches receiveCurrentUser session action and clear error action
    },
    (errors) => {
      dispatch(addErrors(errors));
      // dispatches error action to error reducer
    }
  )
);
