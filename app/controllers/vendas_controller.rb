class VendasController < ApplicationController
  def index
    @vendas = Venda.all
  end

  def new
    @venda = Venda.new

    create
  end

  def create
    @venda = Venda.new
    @venda.valor_total = 0
    if @venda.save
      redirect_to @venda
    else
      render 'new'
    end
  end

  def show
    @venda = Venda.find(params[:id])
  end

  def destroy
    @venda = Venda.find(params[:id])
    @venda.destroy
    redirect_to funcionarios_path
  end

end