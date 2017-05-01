import * as FriendsAPIUtil from '../util/friends_api_util';

export const RECEIVE_ALL_FRIENDS = 'RECEIVE_ALL_FRIENDS';
export const RECEIVE_ALL_REQUESTS = 'RECEIVE_ALL_REQUESTS';
export const RECEIVE_NEW_FRIEND = 'RECEIVE_NEW_FRIEND';
export const REMOVE_FRIEND = 'REMOVE_FRIEND';
export const REMOVE_REQUEST = 'DENY_REQUEST';
export const RECEIVE_ALL_POTENTIAL_FRIENDS = 'RECEIVE_ALL_POTENTIAL_FRIENDS';
export const REMOVE_FROM_SEARCH = 'REMOVE_FROM_SEARCH';

export const receiveAllFriends = (friends) => ({
  type: RECEIVE_ALL_FRIENDS,
  friends
});

export const receiveAllRequests = (friends) => ({
  type: RECEIVE_ALL_REQUESTS,
  friends
});

export const receiveNewFriend = (friend) => ({
  type: RECEIVE_NEW_FRIEND,
  friend
});

export const removeFriend = (id) => ({
  type: REMOVE_FRIEND,
  id
});

export const removeRequest = (friend) => ({
  type: REMOVE_REQUEST,
  friend
});

export const receiveAllPotentialFriends = (friends) => ({
  type: RECEIVE_ALL_POTENTIAL_FRIENDS,
  friends
});

export const removeFromSearch = (friend) => ({
  type: REMOVE_FROM_SEARCH,
  friend
})

export const requestAllFriends = () => (dispatch) => {
  return (
    FriendsAPIUtil.getAllFriends()
    .then(
      (friends) => {
        dispatch(receiveAllFriends(friends));
      }
    )
  );
};

export const requestAllRequests = () => (dispatch) => {
  return (
    FriendsAPIUtil.getPendingFriends()
    .then(
      (friends) => {
        dispatch(receiveAllRequests(friends));
      }
    )
  );
};

export const addFriend = (id) => (dispatch) => {
  FriendsAPIUtil.addFriend(id)
  .then(
    (friend) => {
      dispatch(receiveNewFriend(friend));
      dispatch(removeRequest(friend));
    }
  );
};

export const deleteFriend = (friendId) => (dispatch) => {
  FriendsAPIUtil.deleteFriend(friendId)
  .then(
    (deletedFriend) => {
      dispatch(removeFriend(deletedFriend.id));
    }
  );
};

export const deleteRequest = (friendId) => (dispatch) => {
  FriendsAPIUtil.deleteRequest(friendId)
  .then(
    (deletedFriend) => {
      dispatch(removeRequest(deletedFriend));
    }
  );
};

export const addRequest = (friendId) => (dispatch) => {
  FriendsAPIUtil.addRequest(friendId)
  .then(
    (friend) => {
      dispatch(removeFromSearch(friend));
    }
  );
};

export const requestAllPotentialFriends = (search) => (dispatch) => {
  FriendsAPIUtil.getPotentialFriends(search)
  .then(
    (potentialFriends) => {
      dispatch(receiveAllPotentialFriends(potentialFriends));
    }
  );
};
