json.extract! ingredient, :id, :name, :description, :dosage, :rating, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
