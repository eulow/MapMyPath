export const signUp = (user) => (
  $.ajax({
    method: 'POST',
    url: 'api/users',
    data: user 
  })
);

export const login = (user) => (
  $.ajax({
    method: 'POST',
    url: 'api/session',
    data: user
  })
);

export const signOut = () => (
  $.ajax({
    method: 'DELETE',
    url: 'api/session'
  })
);
