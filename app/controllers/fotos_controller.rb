class FotosController < ApplicationController
 before_filter :require_login

  def new
    @foto = Foto.new(:galeria_id => params[:galeria_id])
  end


  def create
    @foto = Foto.new(params[:foto])
    @foto.save
    if @foto.save
      flash[:notice] = "Foto Creada."
      respond_to do |format|
        format.html {                                         #(html response is for browsers using iframe sollution)
          render :json => [@foto.to_jq_upload].to_json,
          :content_type => 'text/html',
          :layout => false
        }
        format.json {
          render :json => [@foto.to_jq_upload].to_json
        }
      end
    else
      render :action => 'new'
    end
  end

  def edit
    @foto = Foto.find(params[:id])
  end

  def show
  end
  def update
    @foto = Foto.find(params[:id])
    if @foto.update_attributes(params[:foto])
      flash[:notice] = "Foto actualizada."
      redirect_to @foto.galeria
    else
      render :action => 'edit'
    end
  end
  def destroy
    @foto = Foto.find(params[:id])
    @foto.destroy
    flash[:notice] = "Foto Borrada."
    redirect_to @foto.galeria
  end

end
