<<<<<<< HEAD
json.extract! order, :id, :date, :status, :created_at, :updated_at
=======
json.extract! order, :id, :customer_id, :date, :status, :created_at, :updated_at
>>>>>>> 1e11775 (First Commit)
json.url order_url(order, format: :json)
