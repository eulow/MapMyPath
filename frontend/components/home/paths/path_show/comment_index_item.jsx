import React from 'react';
import { FormattedRelative } from 'react-intl';

const CommentIndexItem= ({ comment, deleteComment }) => {

  return (
    <li className='comment-container'>
      <img className='avatar' src={ comment.author.img_url } />
      <div className='comment'>
        <span className='user-info'>
          <p>{ comment.author.name }</p>
          <div className='comment-right'>
            <FormattedRelative value={comment.created_at} />
            <button onClick={() => deleteComment(comment)}>Delete</button>
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
