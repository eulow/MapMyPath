import React from 'react';

const CommentIndexItem= ({ comment, deleteComment }) => {
  return (
    <li className='comment'>
      <img className="avatar" src={ comment.author.img_url } />
      <div>
        <span>
          <p>{ comment.author.name }</p>
          <button onClick={() => deleteComment(comment.id)}>Delete</button>
        </span>
        <span>
          <p>{ comment.body }</p>
        </span>
      </div>
    </li>
  );
};

export default CommentIndexItem;
