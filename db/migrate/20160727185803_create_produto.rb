class CreateProduto < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.float :valor
    end


  end
end
