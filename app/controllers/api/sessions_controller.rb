class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if @user
      log_in(@user)
      render 'api/users/show'
    else
      render(
        json:  { login: ["Invalid email or password. Please try again."] },
        status: 401
      )
    end
  end

  def destroy
    @user = current_user

    if @user
      sign_out
      render 'api/users/show'
    else
      render(
        json: { signout: ["No user logged in"] },
        status: 404
      )
    end
  end
end
