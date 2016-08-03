class FuncionariosController < ApplicationController
  def index
    @vendas = Venda.all
  end
end