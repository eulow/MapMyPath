class Api::RelationshipsController < ApplicationController
  before_action :require_logged_in!

  def create
    @relationship = Relationship.new
    @relationship.action_user_id = current_user.id

    users = [current_user.id, relationship_params.friend_id].sort

    @relationship.user_two_id = users[0]
    @relationship.user_one_id = users[1]

    if @relationship.save
      render json: @relationship
    else
      render @relationship.errors.messages
    end
  end

  def update
    users = [current_user.id, relationship_params.friend_id].sort
    @relationship = Relationship
      .where(user_one_id: user[0])
      .where(user_two_id: user[1])
      .first
    @relationship.action_user_id = current_user.id
    @relationship.status = 1

    if @relationship.save
      friend_id = users.reject { |user| user == current_user.id }
      @user = User.find_by(id: friend_id.first)
      render 'api/user/show'
    else
      render json: @relationship.errors.messages
    end
  end

  def delete
    users = [current_user.id, relationship_params.friend_id].sort
    @relationship = Relationship
      .where(user_one_id: user[0])
      .where(user_two_id: user[1])
      .first

    if @relationship.destroy
      friend_id = users.reject { |user| user == current_user.id }
      @user = User.find_by(id: friend_id.first)
      render 'api/user/show'
    else
      render json: @relationship.errors.messages
    end
  end

  private

  def relationship_params
    params.require(:relationship).permit(:friend_id)
  end
end
