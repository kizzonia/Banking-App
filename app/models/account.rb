class Account < ApplicationRecord
  extend FriendlyId
  friendly_id :account_number, use: :slugged
  
  belongs_to :user
  validates :user, presence: true
  validates :balance, presence: true
  before_validation :load_defaults

  def load_defaults
    if self.new_record?
      self.balance = 0.00
      length = 8
      self.account_number = SecureRandom.random_number(10000000000)
      self.routine_number = SecureRandom.random_number(100000000)
    end
  end

end
