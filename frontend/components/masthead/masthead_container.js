import { connect } from 'react-redux';
import { signOut } from '../../actions/session_actions';
import Masthead from './masthead';

const mapStateToProps = ({ session }, { location }) => {
  return ({
    currentUser: session.currentUser,
    path: location.pathname
  });
};

const mapDispatchToProps = (dispatch) => ({
  signOut: () => dispatch(signOut())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Masthead);
