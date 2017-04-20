import { CLEAR_ERRORS, ADD_ERRORS } from '../actions/error_actions';

const defaultErrors = {};

const errorReducer = (state = defaultErrors, action) => {
  Object.freeze(state);
  switch(action.type) {
    case ADD_ERRORS:
      return Object.assign({}, action.errors.responseJSON);
    case CLEAR_ERRORS:
      return {};
    default:
      return state;
  }
};

export default errorReducer;
