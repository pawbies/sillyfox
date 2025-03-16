class FavoritesController < ApplicationController
  before_action :set_user
  before_action :require_own_user
  before_action :set_favorite, only: %i[ destroy ]

  def create
    favorite = @user.favorites.new favorite_params
    if favorite.save
      redirect_back fallback_location: root_path, notice: "Added to favorites"
    else
      redirect_back fallback_location: root_path, alert: "Something went wrong"
    end
  end

  def destroy
    @favorite.destroy!

    redirect_back fallback_location: root_path, notice: "Removed from favorites"
  end

  private

    def set_user
      @user = User.find_by(id: params[:user_id])
    end

    def set_favorite
      @favorite = Favorite.find(params[:id])
    end

    def favorite_params
      params.expect(favorite: [ :ingredient_id ])
    end

    def require_own_user
      redirect_to root_path, notice: "Not permitted to access this" unless @user.present? && (Current.user.id == @user.id || administrator?)
    end
end
