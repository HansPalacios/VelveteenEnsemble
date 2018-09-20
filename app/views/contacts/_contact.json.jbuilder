json.extract! contact, :id, :text, :name, :email, :phone, :eventdate, :eventlocation, :type, :othertype, :length, :heardby, :created_at, :updated_at
json.url contact_url(contact, format: :json)
