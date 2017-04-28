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

export const combinePathsAndFriendsActivities = (paths, friends) => {
  if (Object.keys(paths).length === 0) {
    return [];
  } else {
    let pathsArray = Object.keys(paths).map(id => paths[id]);

    for (const friendId in friends) {

      pathsArray = pathsArray.concat(friends[friendId].paths);
    }
    return pathsArray.sort(function(a, b) { return b.id - a.id; });
  }
};
