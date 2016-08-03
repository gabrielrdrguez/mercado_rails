class CreateVenda < ActiveRecord::Migration[5.0]
  def change
    create_table :vendas do |t|
      t.float :valor_total
    end
  end
end
