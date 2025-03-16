class IngredientsController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]
  disallow_user_access except: %i[ index show ]
  before_action :set_ingredient, only: %i[ show edit update destroy ]

  # GET /ingredients or /ingredients.json
  def index
    if params[:query]
      query = "%#{params[:query].downcase}%"
      @ingredients = Ingredient.where("LOWER(name) LIKE :query", query: query)
    else
      @ingredients = Ingredient.order("LOWER(name)")
    end
  end

  # GET /ingredients/1 or /ingredients/1.json
  def show
  end

  # GET /ingredients/new
  def new
    @ingredient = Ingredient.new
  end

  # GET /ingredients/1/edit
  def edit
  end

  # POST /ingredients or /ingredients.json
  def create
    @ingredient = Ingredient.new(ingredient_params)

    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to @ingredient, notice: "Ingredient was successfully created." }
        format.json { render :show, status: :created, location: @ingredient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredients/1 or /ingredients/1.json
  def update
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to @ingredient, notice: "Ingredient was successfully updated." }
        format.json { render :show, status: :ok, location: @ingredient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1 or /ingredients/1.json
  def destroy
    @ingredient.destroy!

    respond_to do |format|
      format.html { redirect_to ingredients_path, status: :see_other, notice: "Ingredient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def ingredient_params
      params.expect(ingredient: [ :name, :description, :dosage, :rating ])
    end
end
