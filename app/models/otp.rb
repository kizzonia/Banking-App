class Otp < ApplicationRecord
  belongs_to :account
  belongs_to :transfer
end
