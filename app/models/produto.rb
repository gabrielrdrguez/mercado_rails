class Produto < ActiveRecord::Base
  has_many :item_pedidos, dependent: :destroy
  has_many :estoque_produtos, dependent: :destroy
  validates :nome, presence: true
  validates :valor, presence: true

end