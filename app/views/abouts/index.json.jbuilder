json.array!(@abouts) do |about|
  json.extract! about, :id, :title
  json.url about_url(about, format: :json)
end
