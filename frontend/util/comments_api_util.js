export const getAllComments = (pathId) => {
  return $.ajax({
    method: 'GET',
    url: `api/paths/${pathId}/comments`
  });
};

export const createComment = (comment) => {
  return $.ajax({
    method: 'POST',
    url: `api/paths/${comment.path_id}/comments`,
    data: { comment }
  });
};

export const deleteComment = (comment) => {
  return $.ajax({
    method: 'DELETE',
    url: `api/paths/${comment.path_id}/comments/${comment.id}`,
  });
};
