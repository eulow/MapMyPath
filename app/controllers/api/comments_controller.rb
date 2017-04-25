class Api::CommentsController < ApplicationController
  before_action :require_logged_in!

  def index
    # double check
    @comments = Comment.where('path_id = ?', params[:path_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author_id = current_user.id

    if @comment.save
      render :show
    else
      render @comment.errors.messages, status: 422
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render json: @path
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :path_id)
  end
end
