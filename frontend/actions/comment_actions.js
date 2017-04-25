import * as CommentsAPIUtil from '../util/comments_api_util';
import { clearErrors, addErrors } from './error_actions';

export const RECEIVE_ALL_COMMENTS =  'RECEIVE_ALL_COMMENTS';
export const RECEIVE_NEW_COMMENT = 'RECEIVE_NEW_COMMENT';
export const REMOVE_COMMENT = 'DELETE_COMMENT';

export const receiveAllComments = (comments) => ({
  type: RECEIVE_ALL_COMMENTS,
  comments
});

export const receiveNewComment = (comment) => ({
  type: RECEIVE_NEW_COMMENT,
  comment
});

export const removeComment = (id) => ({
  type: REMOVE_COMMENT,
  id
});


export const requestAllComments = (pathId) => (dispatch) => {
  return (
    CommentsAPIUtil.getAllComments(pathId)
    .then(
      (comments) => {
        dispatch(receiveAllComments(comments));
      }
    )
  );
};

export const createComment = (comment) => (dispatch) => {
  return (
    CommentsAPIUtil.createComment(comment)
    .then(
      (newComment) => {
        dispatch(receiveNewComment(newComment));
        dispatch(clearErrors());
      },
      (errors) => {
        dispatch(addErrors(errors));
      }
    )
  );
};

export const deleteComment = (comment) => (dispatch) => {
  return (
    CommentsAPIUtil.deleteComment(comment)
    .then(
      (deletedComment) => {
        dispatch(removeComment(deletedComment.id));
      },
      (errors) => {
        dispatch(addErrors(errors));
      }
    )
  );
};
