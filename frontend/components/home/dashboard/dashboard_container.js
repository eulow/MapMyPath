import { connect } from 'react-redux';
import Dashboard from './dashboard';

import { requestAllPaths, clearPaths } from '../../../actions/path_actions';

import { completePaths, pendingPaths } from '../../../util/selector.js';

const mapStateToProps = ({ paths, session }) => {
  return {
    completePaths: completePaths(paths),
    pendingPaths: pendingPaths(paths),
    currentUser: session.currentUser
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllPaths: () => dispatch(requestAllPaths('index')),
    clearPaths: () => dispatch(clearPaths())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Dashboard);
