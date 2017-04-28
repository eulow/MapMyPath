import { connect } from 'react-redux';
import AllFriends from './all_friends';

import {
  requestAllFriends,
  deleteFriend,
  deleteRequest,
  addFriend,
  requestAllRequests
} from '../../actions/friend_actions';

const mapStateToProps = ({ session, friends, friendRequests }) => {
  return {
    currentUser: session.currentUser,
    friends: Object.keys(friends).map(id => friends[id])
      .sort(function(a, b) { return b.name - a.name; }),
    friendRequests: Object.keys(friendRequests).map(id => friends[id])
      .sort(function(a, b) { return b.name - a.name; })
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllFriends: () => dispatch(requestAllFriends()),
    deleteFriend: (id) => dispatch(deleteFriend(id)),
    deleteRequest: (id) => dispatch(deleteRequest(id)),
    addFriend: (id) => dispatch(addFriend(id)),
    requestAllRequests: () => dispatch(requestAllRequests())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AllFriends);
