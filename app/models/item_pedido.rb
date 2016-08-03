class ItemPedido < ActiveRecord::Base
  belongs_to :produto
  belongs_to :venda
  belongs_to :estoque
  validates :venda_id, presence: true
  validates :produto_id, presence: true
  validates :quantidade, presence: true
  validates :estoque_id, presence: true

  def destroy
    #acha a venda do item_pedido
    @venda = Venda.find(venda_id)
    #atualiza valor da venda
    @venda.update(valor_total: @venda.valor_total - quantidade * produto.valor)
    #atualiza quantidade do estoque
    @estoque_produto = EstoqueProduto.find_by(produto_id: produto_id,
                                              estoque_id: estoque_id)
    @estoque_produto.update(quantidade: @estoque_produto.quantidade + quantidade)
    #destroy ItemPedido
    super
  end

end