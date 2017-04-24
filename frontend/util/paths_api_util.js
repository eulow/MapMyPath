export const getAllPaths = () => (
  $.ajax({
    method: 'GET',
    url: 'api/paths'
  })
);

export const getSinglePath = (id) => (
  $.ajax({
    method: 'GET',
    url: `api/paths/${id}`
  })
);

export const createPath = (path) => (
  $.ajax({
    method: 'POST',
    url: 'api/paths',
    data: { path }
  })
);

export const updatePath = (path) => (
  $.ajax({
    method: 'PATCH',
    url: `api/paths/${path.id}`,
    data: { path }
  })
);

export const deletePath = (id) => (
  $.ajax({
    method: 'DELETE',
    url: `api/paths/${id}`
  })
);

// path = {
//   name: 'Sample',
//   polyline: 'Test',
//   distance: '5',
//   start_address: 'here',
//   end_address: 'there'
// }
