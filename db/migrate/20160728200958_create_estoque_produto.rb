class CreateEstoqueProduto < ActiveRecord::Migration[5.0]
  def change
    create_table :estoque_produtos do |t|
      t.integer :quantidade
      t.belongs_to :estoque
      t.belongs_to :produto
    end
  end
end
