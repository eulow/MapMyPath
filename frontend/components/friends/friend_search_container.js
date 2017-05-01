import { connect } from 'react-redux';
import FriendSearch from './friend_search';

import {
  addRequest,
  requestAllPotentialFriends
} from '../../actions/friend_actions';

const mapStateToProps = ({ session, friendSearches }) => {
  return {
    currentUser: session.currentUser,
    potentialFriends: Object.keys(friendSearches).map(id => friendSearches[id])
      .sort(function(a, b) { return a.first_name - b.first_name; }),
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    addRequest: (id) => dispatch(addRequest(id)),
    requestAllPotentialFriends: (search) =>
      dispatch(requestAllPotentialFriends(search))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(FriendSearch);
