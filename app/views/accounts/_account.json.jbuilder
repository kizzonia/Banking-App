json.extract! account, :id, :balance, :account_number, :first_name, :last_name, :phone_number, :ssn, :address, :dob, :routine_number, :user_id, :created_at, :updated_at
json.url account_url(account, format: :json)
