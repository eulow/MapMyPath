import { connect } from 'react-redux';
import Dashboard from './dashboard';

import { requestAllPaths } from '../../../actions/path_actions';

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
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Dashboard);
