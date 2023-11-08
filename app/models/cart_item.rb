class CartItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  attr_accessor :quantity
end