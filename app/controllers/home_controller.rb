class HomeController < ApplicationController
  allow_unauthenticated_access

  def index
    if params[:query] && !params[:query].strip.empty?
      @searched = true

      query = "%#{params[:query].downcase}%"
      @ingredients = Ingredient.where("LOWER(name) LIKE :query", query: query)
    else
      @searched = false
    end
  end
end
