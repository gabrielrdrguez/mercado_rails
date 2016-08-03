class AddEstoqueIdToItemPedido < ActiveRecord::Migration[5.0]
  def change
    add_column :item_pedidos, :estoque_id, :integer
  end
end
