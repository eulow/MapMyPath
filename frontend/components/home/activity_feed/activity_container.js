import { connect } from 'react-redux';
import Activity from './activity';

import { combinePathsAndFriendsActivities } from '../../../util/selector.js';

import { requestAllPaths } from '../../../actions/path_actions';
import { requestAllFriends } from '../../../actions/friend_actions';

const mapStateToProps = ({ session, paths, friends }) => {
  const activities = combinePathsAndFriendsActivities(paths, friends);
  return {
    currentUser: session.currentUser,
    activities
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllPaths: () => dispatch(requestAllPaths()),
    requestAllFriends: () => dispatch(requestAllFriends())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Activity);
