class CreateOtps < ActiveRecord::Migration[5.1]
  def change
    create_table :otps do |t|
      t.string :otp
      t.integer :user_id
      t.references :transfer, foreign_key: true

      t.timestamps
    end
  end
end
