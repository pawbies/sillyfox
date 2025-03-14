class UsersController < ApplicationController
  before_action :set_user, only: %i[ show destroy ]
  before_action :require_own_user, only: %i[ show destroy ]

  def show
  end

  def destroy
    @user.destroy!
    terminate_session
    redirect_to root_path, notice: "User was deleted"
  end

  private
    def set_user
      @user = User.find params[:id]
    end

    def require_own_user
      redirect_to root_path, alert: "Not authorized to view this content" if @user.id != Current.user&.id
    end
end
