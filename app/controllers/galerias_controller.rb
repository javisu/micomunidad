class GaleriasController < ApplicationController
  before_filter :require_login
  def index
    @galerias = Galeria.all
  end

  def new
    @galeria = Galeria.new
  end


  def create
    @galeria = Galeria.new(params[:galeria])
    if @galeria.save
      flash[:notice] = "Galeria Creada."
      redirect_to @galeria
    else
      render :action => 'new'
    end
  end

  def edit
    @galeria = Galeria.find(params[:id])
  end


   def show
    @galeria = Galeria.find(params[:id])
  end

  def destroy
    @galeria = Galeria.find(params[:id])
    @galeria.destroy
    flash[:notice] = "Galeria borrada."
    redirect_to galerias_url
  end
end
