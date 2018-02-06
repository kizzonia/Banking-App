class AddOtpToTransfers < ActiveRecord::Migration[5.1]
  def change
    add_column :transfers, :otp, :string
    add_column :transfers, :serial_number, :string
    add_column :transfers, :account_name, :string
  end
end
