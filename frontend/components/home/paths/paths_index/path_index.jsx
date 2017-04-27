import React from 'react';
import { hashHistory } from 'react-router';
import { Link } from 'react-router';
import PathIndexItem from './path_index_item';

class PathIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount () {
    this.props.requestAllPaths();
  }

  render () {
    return (
      <div className='paths-index'>
        <header >
          <h2 className='path-index-header'>My Paths</h2>
          <Link
            to={'/home/paths/new'}
            className='create-button'
            >Create a path
          </Link>
        </header>
        <table>
          <thead>
            <tr>
              <th>Path</th>
              <th>Created</th>
              <th>Distance</th>
              <th>Name</th>
              <th>Start Location</th>
              <th>Complete</th>
              <th>Options</th>
            </tr>
          </thead>
          <tbody>
            {
              this.props.paths.map(path => {
                return (
                  <PathIndexItem
                    key={ path.id }
                    deletePath={ this.props.deletePath }
                    path={ path } />
                );
              })
            }
          </tbody>
        </table>
      </div>
    );
  }
}

export default PathIndex;
