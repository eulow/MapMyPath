import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import ErrorReducer from './error_reducer';
import PathsReducer from './paths_reducer';
import CommentsReducer from './comments_reducer';
import FriendsReducer from './friends_reducer';

const rootReducer = combineReducers({
  session: SessionReducer,
  errors: ErrorReducer,
  paths: PathsReducer,
  comments: CommentsReducer,
  friends: FriendsReducer
});

export default rootReducer;
