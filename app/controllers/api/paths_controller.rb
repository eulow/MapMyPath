class Api::PathsController < ApplicationController
  # before_action :require_logged_in!

  def index
    @paths = current_user.paths
    render :index
  end

  def create
    @path = Path.new(path_params)
    @path.user_id = current_user.id

    if @path.save
      render :show
    else
      render(
        json: @path.errors.messages,
        status: 422
      )
    end
  end

  def show
    @path = Path.find(params[:id])
    render :show
  end

  def destroy
    # debugger
    @path = Path.find(params[:id])
    @path.destroy
    render json: @path
  end

  def update
    @path = Path.find(params[:id])

    if @path.update(path_params)
      render :show
    else
      render(
        json: @path.errors.messages,
        status: 422
      )
    end
  end

  private

  def path_params
    params.require(:path).permit(
      :name,
      :polyline,
      :distance,
      :start_address,
      :end_address,
      :duration,
      :done,
      :done_date,
      :description
    )
  end
end
