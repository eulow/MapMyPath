import * as PathsAPIUtil from '../util/paths_api_util';
import { clearErrors, addErrors } from './error_actions';

export const RECEIVE_ALL_PATHS = 'RECEIVE_ALL_PATHS';
export const RECEIVE_SINGLE_PATH = 'RECEIVE_SINGLE_PATH';
export const RECEIVE_NEW_PATH = 'RECEIVE_NEW_PATH';
export const REMOVE_PATH = 'REMOVE_PATH';
export const CLEAR_PATHS = 'CLEAR_PATHS';

export const receiveAllPaths = (paths) => ({
  type: RECEIVE_ALL_PATHS,
  paths
});

export const clearPaths = () => ({
  type: CLEAR_PATHS
});

export const receiveSinglePath = (path) => ({
  type: RECEIVE_SINGLE_PATH,
  path
});

export const receiveNewPath = (path) => ({
  type: RECEIVE_NEW_PATH,
  path
});

export const removePath = (id) => ({
  type: REMOVE_PATH,
  id
});

export const requestAllPaths = (type) => (dispatch) => {
  return (
    PathsAPIUtil.getAllPaths(type)
    .then(
      (paths) => {
        dispatch(receiveAllPaths(paths));
      }
    )
  );
};

export const requestSinglePath = (id) => (dispatch) => {
  return (
    PathsAPIUtil.getSinglePath(id)
    .then(
      (path) => {
        dispatch(receiveSinglePath(path));
      }
    )
  );
};


export const createPath = (path) => (dispatch) => {
  //  dispatch(receiveNewPath(newPath));
  //  not necessary since it will redirect to new page,
  // thus loading new component

  return (
    PathsAPIUtil.createPath(path)
    .then(
      (newPath) => {
       dispatch(clearErrors());
       return newPath;
      },
      (errors) => {
        dispatch(addErrors(errors));
      }
    )
  );
};

export const updatePath = (path) => (dispatch) => {
  return (
    PathsAPIUtil.updatePath(path)
    .then(
      (updatedPath) => {
        dispatch(receiveSinglePath(updatedPath));
        dispatch(clearErrors());
      },
      (errors) => {
        dispatch(addErrors(errors));
      }
    )
  );
};

export const deletePath = (id) => (dispatch) => {
  return (
    PathsAPIUtil.deletePath(id)
    .then(
      (deletedPath) => {
        dispatch(removePath(deletedPath.id));
      },
      (errors) => {
        dispatch(addErrors(errors));
      }
    )
  );
};
