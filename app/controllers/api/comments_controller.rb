class Api::CommentsController < ApplicationController
  before_action :require_logged_in!

  def index
    # double check
    @comments = Comment.where('path_id = ?', params[:path_id]).includes(:author)
  end

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.author_id = current_user.id

    if @comment.save
      render :show
    else
      render json: @comment.errors.messages, status: 422
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render json: @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :path_id)
  end
end
