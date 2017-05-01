import { connect } from 'react-redux';
import Activity from './activity';

import { combinePathsAndFriendsActivities } from '../../../util/selector.js';

import { requestAllPaths } from '../../../actions/path_actions';
import { requestAllFriends } from '../../../actions/friend_actions';

const mapStateToProps = ({ session, paths }) => {
  return {
    currentUser: session.currentUser,
    paths: Object.keys(paths).map(id => paths[id])
      .sort(function(a, b) { return b.id - a.id; })
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllPaths: () => dispatch(requestAllPaths('activity')),
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Activity);
