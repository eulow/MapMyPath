import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import errorReducer from './error_reducer';
import PathsReducer from './paths/paths_reducer';

const rootReducer = combineReducers({
  session: SessionReducer,
  errors: errorReducer,
  paths: PathsReducer
});

export default rootReducer;
