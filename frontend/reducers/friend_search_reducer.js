import { RECEIVE_ALL_POTENTIAL_FRIENDS, REMOVE_FROM_SEARCH } from '../actions/friend_actions';

const friendSearchReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_ALL_POTENTIAL_FRIENDS:
      return Object.assign({}, action.friends);
    case REMOVE_FROM_SEARCH:
      let newState = Object.assign({}, oldState);
      delete newState[action.friend.id];
      return newState;
    default:
      return oldState;
  }
};

export default friendSearchReducer;
