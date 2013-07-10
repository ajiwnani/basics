json.array!(@books) do |book|
  json.extract! book, :author, :title, :year
  json.url book_url(book, format: :json)
end
