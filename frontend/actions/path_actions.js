import * as PathsAPIUtil from '../util/paths_api_util';
import { clearErrors, addErrors } from './error_actions';
import { hashHistory } from 'react-router';

export const RECEIVE_ALL_PATHS = 'RECEIVE_ALL_PATHS';
export const RECEIVE_SINGLE_PATH = 'RECEIVE_SINGLE_PATH';
export const RECEIVE_NEW_PATH = 'RECEIVE_NEW_PATH';
export const REMOVE_PATH = 'REMOVE_PATH';

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
