json.extract! event, :id, :title, :date, :location, :type, :length, :amount, :deposit, :subtotal, :deposit_paid, :total_paid, :customer_id, :created_at, :updated_at
json.url event_url(event, format: :json)
