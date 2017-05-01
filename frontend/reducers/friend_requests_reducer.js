import { REMOVE_REQUEST, RECEIVE_ALL_REQUESTS } from '../actions/friend_actions';

const friendRequestReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_ALL_REQUESTS:
      return Object.assign({}, action.friends);
    case REMOVE_REQUEST:
      let newState = Object.assign({}, oldState);
      delete newState[action.friend.id];
      return newState;
    default:
      return oldState;
  }
};

export default friendRequestReducer;
