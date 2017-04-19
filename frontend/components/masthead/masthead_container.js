import { connect } from 'react-redux';
import { signOut } from '../../actions/session_actions';
import Masthead from './masthead';

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser,
});

const mapDispatchToProps = (dispatch) => ({
  signOut: () => dispatch(signOut())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Masthead);
