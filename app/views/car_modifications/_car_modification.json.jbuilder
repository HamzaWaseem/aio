json.extract! car_modification, :id, :title, :rates, :body, :published_at, :created_at, :updated_at
json.url car_modification_url(car_modification, format: :json)
