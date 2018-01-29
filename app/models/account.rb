class Account < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :balance, presence: true
  before_validation :load_defaults

  def load_defaults
    if self.new_record?
      self.balance = 0.00
      length = 8
      self.account_number = SecureRandom.random_number(10)
      self.routine_number = SecureRandom.random_number(10)
    end
  end

end
