class UsersController < ApplicationController
  before_action :authenticate_user!

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  private

  def user_params
    params.require(:user).permit(:bio)
  end
end
