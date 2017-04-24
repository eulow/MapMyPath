import {
  RECEIVE_ALL_PATHS,
  RECEIVE_NEW_PATH,
  REMOVE_PATH
} from '../../actions/path_actions';

const PathsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_ALL_PATHS:
     return Object.assign({}, action.paths);
    case RECEIVE_NEW_PATH:
      return Object.assign(
        {},
        { [action.path.id]: action.path },
        oldState
      );
    case REMOVE_PATH:
      let newState = Object.assign({}, oldState);
      delete newState[action.id];
      return newState;
    default:
      return oldState;
  }
};

export default PathsReducer;
