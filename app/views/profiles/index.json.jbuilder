json.array!(@profiles) do |profile|
  json.extract! profile, :id, :email, :address, :companyname, :user_id
  json.url profile_url(profile, format: :json)
end
