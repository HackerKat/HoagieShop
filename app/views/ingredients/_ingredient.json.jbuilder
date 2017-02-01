json.extract! ingredient, :id, :name, :origin, :amount, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)