class Api::RelationshipsController < ApplicationController
  before_action :require_logged_in!

  def index
    @friends = current_user.pending_friends
    render :index
  end

  def create
    @relationship = Relationship.new
    @relationship.action_user_id = current_user.id

    users = [current_user.id, params[:friend_id].to_i].sort

    @relationship.user_one_id = users[0]
    @relationship.user_two_id = users[1]
    @relationship.status = 0
    if @relationship.save
      @user = User.find(params[:friend_id])
      render 'api/users/show'
    else
      render @relationship.errors.messages
    end
  end

  def show
    @friends = current_user.potential_friends(params[:search])
    render :index
  end

  def update
    relationship = [current_user.id, params[:id].to_i].sort
    @relationship = Relationship
      .where(user_one_id: relationship[0])
      .where(user_two_id: relationship[1])
      .first

    @relationship.action_user_id = current_user.id
    @relationship.status = 1

    if @relationship.save
      friend_id = relationship.reject { |user| user == current_user.id }
      @user = User.find_by(id: friend_id.first)
      render 'api/users/show'
    else
      render json: @relationship.errors.messages
    end
  end

  def destroy
    friendship = [current_user.id, params[:id].to_i].sort
    @relationship = Relationship
      .where(user_one_id: friendship[0])
      .where(user_two_id: friendship[1])
      .first

    if @relationship.destroy
      friend_id = friendship.reject { |user| user == current_user.id }
      @user = User.find_by(id: friend_id.first)
      render 'api/users/show'
    else
      render json: @relationship.errors.messages
    end
  end

  private

  def relationship_params
    params.require(:relationship).permit(:friend_id)
  end
end
