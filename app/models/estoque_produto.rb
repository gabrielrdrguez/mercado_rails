
class EstoqueProduto < ActiveRecord::Base
  belongs_to :produto
  belongs_to :estoque
  validates :produto_id, presence: true,
                         uniqueness: {scope: :estoque_id, message: 'O estoque selecionado já contém este produto'}
  validates :estoque_id, presence: true
  validates :quantidade, presence: true

end