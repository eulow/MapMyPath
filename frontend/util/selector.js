export const completePaths = ( paths ) => {
  let completedPaths = [];
  for (const pathId in paths) {
    if(paths[pathId].done === true) {
      completedPaths.push(paths[pathId]);
    }
  }
  return completedPaths.sort(function(a, b) { return  new Date(b.updated_at) - new Date(a.updated_at); });
};

export const pendingPaths = ( paths ) => {
  let incompletedPaths = [];
  for (const pathId in paths) {
    if(paths[pathId].done === false) {
      incompletedPaths.push(paths[pathId]);
    }
  }
  return incompletedPaths.sort(function(a, b) { return  new Date(b.updated_at) - new Date(a.updated_at); });
};
