class Account < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :balance, presence: true
  before_validation :load_defaults

  def load_defaults
    if self.new_record?
      self.balance = 0.00
      length = 8
      self.account_number = SecureRandom.random_number(10**length)).round.to_s
      self.routine_number = SecureRandom.random_number(100)
    end
  end

end
