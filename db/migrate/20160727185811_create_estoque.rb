class CreateEstoque < ActiveRecord::Migration[5.0]
  def change
    create_table :estoques do |t|
      t.string :nome
    end
  end
end
