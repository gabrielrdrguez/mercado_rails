class Venda < ActiveRecord::Base
  has_many :item_pedidos



  def destroy
    item_pedidos.each do |i|
      i.destroy
    end
    super
  end

end