class AddConfirmedToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :confirmed, :boolean
  end
end
