class AddFieldsToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :date_of_birth, :datetime
    add_column :accounts, :slug, :string
    add_index :accounts, :slug, unique: true
    add_column :accounts, :city, :string
    add_column :accounts, :zip_code, :integer
    add_column :accounts, :country, :string
    add_column :accounts, :account_type, :string
    add_column :accounts, :account_pin, :integer
    add_column :accounts, :verify_pin, :integer
  end
end
