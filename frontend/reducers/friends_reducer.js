import { RECEIVE_ALL_FRIENDS } from '../actions/friend_actions';


const FriendsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_ALL_FRIENDS:
      return Object.assign({}, action.friends);
    default:
      return oldState;
  }
};

export default FriendsReducer;
