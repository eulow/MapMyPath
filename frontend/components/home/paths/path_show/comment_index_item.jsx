import React from 'react';
import { FormattedRelative } from 'react-intl';

const CommentIndexItem = ({ comment, deleteComment, path, currentUser }) => {
  const deleteButton = () => {
    if (comment.author_id === currentUser.id || path.user.id === currentUser.id) {
      return <button onClick={() => deleteComment(comment)}>Delete</button>;
    } else {
      return "";
    }
  };
  return (
    <li className='comment-container'>
      <img className='avatar' src={ comment.author.img_url } />
      <div className='comment'>
        <span className='user-info'>
          <p>{ comment.author.name }</p>
          <div className='comment-right'>
            {deleteButton()}
            <FormattedRelative value={comment.created_at} />
          </div>
        </span>
        <span>
          <p>{ comment.body }</p>
        </span>
      </div>
    </li>
  );
};

export default CommentIndexItem;
