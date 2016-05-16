class RegisteredUsersController < ApplicationController
  before_action :set_registered_user, only: [:show, :update, :destroy]

  # GET /registered_users
  def index
    @registered_users = RegisteredUser.all

    render json: @registered_users
  end

  # GET /registered_users/1
  def show
    render json: @registered_user
  end

  # POST /registered_users
  def create
    @registered_user = RegisteredUser.new(registered_user_params)

    if @registered_user.save
      render json: @registered_user, status: :created, location: @registered_user
    else
      render json: @registered_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /registered_users/1
  def update
    if @registered_user.update(registered_user_params)
      render json: @registered_user
    else
      render json: @registered_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /registered_users/1
  def destroy
    @registered_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registered_user
      @registered_user = RegisteredUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def registered_user_params
      params.require(:registered_user).permit(:date, :number)
    end
end
