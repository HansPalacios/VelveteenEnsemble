json.extract! contact, :id, :text, :name, :email, :phone, :eventdate, :eventlocation, :type, :length, :created_at, :updated_at
json.url contact_url(contact, format: :json)
