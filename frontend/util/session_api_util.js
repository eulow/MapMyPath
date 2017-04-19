export const signUp = (user) => (
  $.ajax({
    method: 'POST',
    url: 'api/users',
    data: { user }
  })
);

export const signIn = (user) => (
  $.ajax({
    method: 'POST',
    url: 'api/session',
    data: { user }
  })
);

export const signOut = () => (
  $.ajax({
    method: 'DELETE',
    url: 'api/session'
  })
);
