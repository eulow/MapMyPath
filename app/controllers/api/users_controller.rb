class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      log_in(@user)
      render :show
    else
      render(
        json: @user.errors.messages,
        status: 422
        # will render a key value pair, e.g. first_name => ["can't be blank"]
      )
    end
  end

  def update
    @user = User.find_by(id: params[:id])

    if @user.update(user_params)
      render :show
    else
      render(
        json: @user.errors.messages,
        status: 422
        # will render a key value pair, e.g. first_name => ["can't be blank"]
      )
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :img_url
    )
  end
end
