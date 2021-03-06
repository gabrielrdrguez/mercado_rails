# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160802175222) do

  create_table "estoque_produtos", force: :cascade do |t|
    t.integer "quantidade"
    t.integer "estoque_id"
    t.integer "produto_id"
    t.index ["estoque_id"], name: "index_estoque_produtos_on_estoque_id"
    t.index ["produto_id"], name: "index_estoque_produtos_on_produto_id"
  end

  create_table "estoques", force: :cascade do |t|
    t.string "nome"
  end

  create_table "item_pedidos", force: :cascade do |t|
    t.integer "quantidade"
    t.integer "venda_id"
    t.integer "produto_id"
    t.integer "estoque_id"
    t.index ["produto_id"], name: "index_item_pedidos_on_produto_id"
    t.index ["venda_id"], name: "index_item_pedidos_on_venda_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.float  "valor"
  end

  create_table "vendas", force: :cascade do |t|
    t.float "valor_total"
  end

end
