import * as FriendsAPIUtil from '../util/friends_api_util';

export const RECEIVE_ALL_FRIENDS = 'RECEIVE_ALL_FRIENDS';

export const receiveAllFriends = (friends) => ({
  type: RECEIVE_ALL_FRIENDS,
  friends
});


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
