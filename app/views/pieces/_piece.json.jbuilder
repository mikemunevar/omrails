json.extract! piece, :id, :title, :artist_name, :length, :width, :height, :year, :created_at, :updated_at
json.url piece_url(piece, format: :json)