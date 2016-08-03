class EstoquesController < ApplicationController
  def index
    @estoque = Estoque.all
  end

  def new
    @estoque = Estoque.new
  end

  def create
    @estoque = Estoque.new(estoque_params)
    if @estoque.save
      redirect_to @estoque
    else
      render 'new'
    end
  end

  def show
    @estoque = Estoque.find(params[:id])
  end

  def find_all_from_estoque_id(id)
    EstoqueProduto.find_by_estoque_id(id)
  end

  private
  def estoque_params
      params.require(:estoque).permit(:nome)
  end


end