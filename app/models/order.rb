class Order < ApplicationRecord
  before_create :generate_token

  belongs_to :user

  has_many :product_lists

  def generate_token
    self.token = SecureRandom.uuid 
  end
end
