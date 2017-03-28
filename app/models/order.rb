class Order < ApplicationRecord
  before_create :generate_token

  belongs_to :user

  has_many :product_lists

  def generate_token
    self.token = SecureRandom.uuid
  end

  def set_payment_with!(method)
    self.update_columns(payment_method: method)
  end

  def pay!
    self.update_columns(is_paid: true )
  end
end
