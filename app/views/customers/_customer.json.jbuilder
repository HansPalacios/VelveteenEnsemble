json.extract! customer, :id, :fname, :lname, :email, :phone, :city, :created_at, :updated_at
json.url customer_url(customer, format: :json)
