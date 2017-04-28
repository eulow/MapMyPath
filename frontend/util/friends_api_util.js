export const getAllFriends = () => {
  return $.ajax({
    method: 'GET',
    url: 'api/users'
  });
};
