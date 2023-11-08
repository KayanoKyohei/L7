class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }

  # 他のモデルとの関連性を設定する場合はここに記述
end