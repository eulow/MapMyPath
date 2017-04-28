import { connect } from 'react-redux';
import { AllFriends } from './all_friends';

import {
  requestAllFriends,
  deleteFriend,
  deleteRequest,
  addFriend
} from '../../actions/friend_actions';

const mapStateToProps = ({ session, friends, friendRequests }) => {
  return {
    currentUser: session.currentUser,
    friends,
    friendRequests
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllFriends: () => dispatch(requestAllFriends()),
    deleteFriend: (id) => dispatch(deleteFriend(id)),
    deleteRequest: (id) => dispatch(deleteRequest(id)),
    addFriend: (id) => dispatch(addFriend(id))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AllFriends);
