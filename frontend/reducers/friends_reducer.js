import { RECEIVE_ALL_FRIENDS, REMOVE_FRIEND, RECEIVE_NEW_FRIEND } from '../actions/friend_actions';


const FriendsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_ALL_FRIENDS:
      return Object.assign({}, action.friends);
    case RECEIVE_NEW_FRIEND:
      return Object.assign(
        {},
        oldState,
        { [action.friend.id]: action.friend}
      );
    case REMOVE_FRIEND:
      let newState = Object.assign({}, oldState);
      delete newState[action.id];
      return newState;
    default:
      return oldState;
  }
};

export default FriendsReducer;
