class CreateTransfers < ActiveRecord::Migration[5.1]
  def change
    create_table :transfers do |t|
      t.string :account_number
      t.string :routine_number
      t.string :account_pin
      t.string :amount
      t.integer :user_id
      t.string :slug
      t.references :account, foreign_key: true

      t.timestamps
    end
    add_index :transfers, :slug
  end
end
