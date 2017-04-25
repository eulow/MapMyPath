import { connect } from 'react-redux';
import PathIndex from './path_index';

import { requestAllPaths, deletePath } from '../../../../actions/path_actions';

const mapStateToProps = ({ paths }) => {
  return {
    paths: Object.keys(paths).map(id => paths[id])
      .sort(function(a, b) { return b.id - a.id; })
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllPaths: () => dispatch(requestAllPaths()),
    deletePath: (id) => dispatch(deletePath(id))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PathIndex);
