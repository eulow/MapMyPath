import { connect } from 'react-redux';
import { createPath } from '../../../../actions/path_actions';

import PathForm from './path_form';

const mapStateToProps = ({ errors }) => {
  return ({
    errors
  });
};

const mapDispatchToProps = (dispatch) => {
  return {
    createPath: path => dispatch(createPath(path))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PathForm);
