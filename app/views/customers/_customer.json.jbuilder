<<<<<<< HEAD
json.extract! customer, :id, :phone, :email, :created_at, :updated_at
=======
json.extract! customer, :id, :name, :second_name, :email, :phone, :created_at, :updated_at
>>>>>>> 1e11775 (First Commit)
json.url customer_url(customer, format: :json)
