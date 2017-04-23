import React from 'react';
import PathForm from './paths_form/path_form';

class PathsMain extends React.Component {
  constructor(props) {
    super(props);
  }

  render () {
    return (
      <section className='paths-main'>
        <PathForm />
      </section>
    );
  }
}

export default PathsMain;
