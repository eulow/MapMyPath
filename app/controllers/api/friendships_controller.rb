class Api::FriendshipsController < ApplicationController

  def create
    @friendship = current_user.friendships.new(friendship_params)

    if @friendship.save
      render :show
    else
      render json: @friendship.errors.messages, status: 422
    end
  end

  def update
    @friendship = Friendship.find(params[:id])
    @friendship.status = 1

    if @friendship.save
      render :show
    else
      render json: @friendship.errors.messages, status: 422
    end

    def destroy
      @friendship = Friendship.find(params[:id])
      @friendship.destroy
      render json: @friendship
    end
  end



  private

  def friendship_params
    params.require(:friendship).permit(:friend_id)
  end
end
