json.array!(@userforms) do |userform|
  json.extract! userform, :id, :name, :age, :email, :contact_no, :interest
  json.url userform_url(userform, format: :json)
end
