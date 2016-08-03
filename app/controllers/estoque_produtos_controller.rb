class  EstoqueProdutosController < ApplicationController
  def index
    @estoque_produto = EstoqueProduto.all
  end

  def new
    @estoque_produto = EstoqueProduto.new(:estoque_id => params[:estoque_id])
  end

  def create
   # @estoque = Estoque.find(params[:estoque_id])
    @estoque_produto = EstoqueProduto.new(estoque_produto_params)
    if @estoque_produto.save
      redirect_to @estoque_produto
    else
      render 'new'
    end
  end

  def show
    @estoque_produto = EstoqueProduto.find(params[:id])
  end
  private
  def estoque_produto_params
    params.require(:estoque_produto).permit(:estoque_id, :produto_id,:quantidade)
  end
end