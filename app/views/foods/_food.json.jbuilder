json.extract! food, :id, :name, :weight, :protein, :calorie, :carbohydrate, :photo, :portion, :created_at, :updated_at
json.url food_url(food, format: :json)
