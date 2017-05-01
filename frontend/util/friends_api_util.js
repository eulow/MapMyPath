export const getAllFriends = () => {
  return $.ajax({
    method: 'GET',
    url: 'api/users'
  });
};

export const getPendingFriends = () => {
  return $.ajax({
    method: 'GET',
    url: 'api/relationships'
  });
};

export const addFriend = (friend_id) => (
  $.ajax({
    method: 'PATCH',
    url: `api/relationships/${friend_id}`,
  })
);

export const deleteFriend = (friend_id) => (
  $.ajax({
    method: 'DELETE',
    url: `api/relationships/${friend_id}`
  })
);

export const addRequest = (friend_id) => (
  $.ajax({
    method: 'POST',
    url: `api/relationships/${friend_id}`,
  })
);

export const deleteRequest = (friend_id) => (
  $.ajax({
    method: 'DELETE',
    url: `api/relationships/${friend_id}`
  })
);
