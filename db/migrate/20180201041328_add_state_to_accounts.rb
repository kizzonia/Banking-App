class AddStateToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :state, :string
  end
end
