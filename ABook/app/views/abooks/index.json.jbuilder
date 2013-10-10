json.array!(@abooks) do |abook|
  json.extract! abook, :first_name, :last_name, :email, :zipcode, :fav_color
  json.url abook_url(abook, format: :json)
end
