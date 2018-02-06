class Transfer < ApplicationRecord
  #extend FriendlyId
  #friendly_id :account_number, use: :slugged

  belongs_to :account
  belongs_to :user
  has_many :otps
  before_validation :load_defaults

  def load_defaults
    if self.new_record?
      self.otp = SecureRandom.random_number(1000000)
    end
  end
end
