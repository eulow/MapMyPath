import React from 'react';
import CommentIndexItem from './comment_index_item';

class Comments extends React.Component {
  constructor(props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);

    this.state = {
      body: ""
    };
  }

  update(field) {
    return (e) => {
      this.setState({
        [field]: e.currentTarget.value
      });
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    const path = Object.assign({}, this.state, { path_id: this.props.pathId });
    this.props.createPath(path);
  }

  renderError({ body }) {
    if(body) {
      return (
        <div className="errors">Comment {body}.</div>
      );
    }
  }

  render () {
    const {
       comments,
       createComment,
       deleteComment,
       currentUser,
       errors
     } = this.props;

    return (
      <div className='comments-box'>
        <ul>
          {
            comments.map(comment => {
              return (
                <CommentIndexItem
                  comment={ comment }
                  deleteComment={ deleteComment }
                  key={comment.id}/>
              );
            })
          }
        </ul>
        <form className='comment-form' onSubmit={this.handleSubmit}>
          <img className="avatar" src={ currentUser.img_url } />
            <div className='input-container'>
              <input
                className='comment-input'
                type='text'
                value={this.state.body}
                onChange={this.update('body')}
                placeholder='Write a comment...'
              />
              {this.renderError(errors)}
            </div>
            <input type='submit' value='post' />
        </form>
      </div>
    );
  }
}

export default Comments;
