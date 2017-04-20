import { connect } from 'react-redux';
import { login, signOut, signUp } from '../../actions/session_actions';
import SessionForm from './session_form';

const mapStateToProps = ({ session, errors }) => ({
  signedIn: Boolean(session.currentUser),
  errors
});

const mapDispatchToProps = (dispatch, { location }) => {
  const formType = location.pathname.slice(1);
  let processForm = signUp;
  if (formType === 'login') {
    processForm = login;
  }
  return {
    processForm: user => dispatch(processForm(user)),
    loginGuest: (guest) => dispatch(login(guest)),
    formType
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
