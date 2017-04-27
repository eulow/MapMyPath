export const completePaths = ( paths ) => {
  let completedPaths = [];
  for (const pathId in paths) {
    if(paths[pathId].done === true) {
      completedPaths.push(paths[pathId]);
    }
  }
  return completedPaths;
};

export const pendingPaths = ( paths ) => {
  let incompletedPaths = [];
  for (const pathId in paths) {
    if(paths[pathId].done === false) {
      incompletedPaths.push(paths[pathId]);
    }
  }
  return incompletedPaths;
};
