import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import errorReducer from './error_reducer';

const rootReducer = combineReducers({
  session: SessionReducer,
  errors: errorReducer
});

export default rootReducer;
