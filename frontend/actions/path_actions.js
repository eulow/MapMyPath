import * as PathsAPIUtil from '../util/paths_api_util';
import { clearErrors, addErrors } from './error_actions';
import { hashHistory } from 'react-router';

export const RECEIVE_ALL_PATHS = 'RECEIVE_ALL_PATHS';
export const RECEIVE_SINGLE_PATH = 'RECEIVE_SINGLE_PATH';
export const RECEIVE_NEW_PATH = 'RECEIVE_NEW_PATH';
export const REMOVE_PATH = 'REMOVE_PATH';
export const LOADING_ALL_PATHS = 'LOADING_ALL_PATHS';
export const LOADING_SINGLE_PATH = 'LOADING_SINGLE_PATH';

export const receiveAllPaths = (paths) => ({
  type: RECEIVE_ALL_PATHS,
  paths
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

export const loadingAllPaths = () => ({
  type: LOADING_ALL_PATHS
});

export const loadingSinglePath = () => ({
  type: LOADING_SINGLE_PATH
});

export const requestAllPaths = () => (dispatch) => {
  dispatch(loadingAllPaths);
  return (
    PathsAPIUtil.getAllPaths()
    .then(
      (paths) => {
      dispatch(receiveAllPaths(paths));
      }
    )
  );
};

export const requestSinglePath = (id) => (dispatch) => {
  dispatch(loadingSinglePath);
  return (
    PathsAPIUtil.getSinglePath()
    .then(
      (path) => {
        dispatch(receiveSinglePath());
      }
    )
  );
};

export const createPath = (path) => (dispatch) => {
  return (
    PathsAPIUtil.createPath(path)
    .then(
      (newPath) => {
       dispatch(receiveNewPath(newPath));
       dispatch(clearErrors());
       hashHistory.push(`/home/paths/all`);
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
        // hashHistory.push(`./home/paths/${updatedPath.id}`);
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
