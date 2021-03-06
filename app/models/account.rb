class Account < ApplicationRecord
  mount_uploader :image, ImageUploader
  extend FriendlyId
  friendly_id :account_number, use: :slugged
  #  accepts_nested_attributes_for :transfers
  belongs_to :user
  has_many :transfers, dependent: :destroy
  accepts_nested_attributes_for :transfers
  validates :user, presence: true
  validates :balance, presence: true
  before_validation :load_defaults

  def load_defaults
    if self.new_record?
      self.balance = 0.00
      length = 8
      self.account_number = SecureRandom.random_number(10000000000)
      self.routine_number = SecureRandom.random_number(100000000)
      self.confirmed = "false"
    end
  end

end
