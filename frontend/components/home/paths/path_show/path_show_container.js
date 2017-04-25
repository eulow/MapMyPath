import { connect } from 'react-redux';
import PathShow from './path_show';

import {
  createComment,
  deleteComment,
  requestAllComments
} from '../../../../actions/comment_actions';

import {
  requestSinglePath,
  deletePath,
  updatePath
} from '../../../../actions/path_actions';

const mapStateToProps = ({ session, paths, comments, errors }) => {
  const path = paths[Object.keys(paths)];
  return {
    path,
    errors,
    comments: Object.keys(comments).map(id => comments[id])
      .sort(function(a, b) { return b.id - a.id; }),
    currentUser: session.currentUser
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestSinglePath: (id) => dispatch(requestSinglePath(id)),
    updatePath: (path) => dispatch(updatePath(path)),
    deletePath: (id) => dispatch(deletePath(id)),
    requestAllComments: (pathId) => dispatch(requestAllComments(pathId)),
    createComment: (commentId, pathId) =>
      dispatch(createComment(commentId, pathId)),
    deleteComment: (commentId, pathId) =>
      dispatch(deleteComment(commentId, pathId))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PathShow);
