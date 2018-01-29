class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.decimal :balance
      t.string :account_number
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :ssn
      t.string :address
      t.string :dob
      t.string :routine_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
