class CreateItemPedido < ActiveRecord::Migration[5.0]
  def change
    create_table :item_pedidos do |t|
      t.integer :quantidade
      t.belongs_to :venda
      t.belongs_to :produto
    end
  end
end
