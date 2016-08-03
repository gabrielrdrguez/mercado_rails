class ItemPedidosController < ApplicationController
  def index
  end
  def new()
    @item_pedido = ItemPedido.new
    @item_pedido.venda_id=params[:id_venda]
  end

  def create
    @estoque_produto =EstoqueProduto.find_by(:produto_id => item_pedido_params[:produto_id],:estoque_id => item_pedido_params[:estoque_id])
    unless @estoque_produto.nil? #se o produto existe
      if item_pedido_params[:quantidade].to_i <= @estoque_produto.quantidade #se a quantidade está disponviel
        @item_pedido = ItemPedido.new(item_pedido_params)
        if @item_pedido.save
          #remove quantidade do estoque
          @estoque_produto.update(quantidade: (@estoque_produto.quantidade - item_pedido_params[:quantidade].to_i) )
          #adiciona valor na venda
          @venda = Venda.find_by(:id => item_pedido_params[:venda_id])
          @venda.update(valor_total: @venda.valor_total + @item_pedido.quantidade * @item_pedido.produto.valor)
          redirect_to @venda
        else
          render 'new'
        end
      else #se a quantidade não está disponível
        puts "error"
      end
    else #se o produto não existe
      puts "error"
    end

  end

  def destroy
    @item_pedido = ItemPedido.find(params[:id])
    @item_pedido.destroy
    redirect_to venda_path(params[:venda_id])
  end


  private
  def item_pedido_params
    params.require(:item_pedido).permit(:estoque_id, :produto_id, :quantidade, :venda_id)
  end


end