import {
  RECEIVE_ALL_COMMENTS,
  RECEIVE_NEW_COMMENT,
  REMOVE_COMMENT
} from '../actions/comment_actions';


const CommentsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_ALL_COMMENTS:
      return Object.assign({}, action.comments);
    case RECEIVE_NEW_COMMENT:
      return Object.assign(
        {},
        oldState,
        { [action.comment.id]: action.comment }
      );
    case REMOVE_COMMENT:
      let newState = Object.assign({}, oldState);
      delete newState[action.id];
      return newState;
    default:
      return oldState;
  }
};

export default CommentsReducer;
