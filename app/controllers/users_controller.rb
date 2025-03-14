class UsersController < ApplicationController
  disallow_user_access only: %i[ index ]
  allow_unauthenticated_access only: %i[ new create ]
  before_action :require_own_user, only: %i[ show edit update destroy ]
  before_action :set_user, only: %i[ show edit update destroy ]

  def index
    if params[:query]
      query = "%#{params[:query]}%"
      @users = User.where("username LIKE :query OR email_address LIKE :query", query: query).order("LOWER(username)")
    else
      @users = User.order("LOWER(username)")
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(**user_params, role: :user)
    if @user.save
      start_new_session_for @user
      redirect_to @user, notice: "Signed up as #{@user.username}"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update user_params
      redirect_to @user, notice: "Updated user"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    terminate_session if @user.id == Current.user.id
    @user.destroy!
    redirect_to root_path, notice: "User was deleted"
  end

  private
    def set_user
      @user = User.find params[:id]
    end

    def require_own_user
      redirect_to root_path, alert: "Not authorized to view this content" unless Current.user&.admin? || params[:id].to_i == Current.user&.id
    end

    def user_params
      params.expect(user: [ :email_address, :username, :password, :password_confirmation ])
    end
end
