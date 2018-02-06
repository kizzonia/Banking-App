class Otp < ApplicationRecord
  belongs_to :account
  belongs_to :transfer
  belongs_to :user
end
