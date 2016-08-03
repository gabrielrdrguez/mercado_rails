class Estoque < ActiveRecord::Base
  has_many :estoque_produtos, dependent: :destroy
  has_many :item_pedidos, dependent: :destroy
  validates :nome, presence: true
end