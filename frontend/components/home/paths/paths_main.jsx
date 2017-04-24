import React from 'react';
import PathFormContainer from './paths_form/path_form_container';

class PathsMain extends React.Component {
  constructor(props) {
    super(props);
  }

  render () {
    return (
      <section className='paths-main'>
        <PathFormContainer />
      </section>
    );
  }
}

export default PathsMain;
