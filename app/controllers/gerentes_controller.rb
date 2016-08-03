class GerentesController < ApplicationController
  def index
    @gerente = Gerente.all
  end

  def new
    @gerente = Gerente.new
  end

  def create
    @gerente = Gerente.new
    if @gerente.save
      redirect_to @gerente
    else
      render 'new'
    end
  end

  def show
    @gerente = Gerente.find(params[:id])
  end

end