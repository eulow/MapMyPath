import React from 'react';
import PathFormContainer from './paths_form/path_form_container';
import PathIndex from './paths_index/path_index_container';

class PathsMain extends React.Component {
  constructor(props) {
    super(props);
  }

  render () {
    return (
      <section className='paths-main'>
        {this.props.children}
      </section>
    );
  }
}

// <PathIndex />
export default PathsMain;
