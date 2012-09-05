class WscoloresController < ApplicationController
  def leer3
    @colores = Color.all
    
    respond_to do |format|
      format.json  { render :json => @colores.to_json(:only => [:id, :nombre, :referencia, :descripcion] ) }
    end
  end

  def crear
  end

  def colordia
    unColor(2)
  end
  
  def color
    unColor(params[:id])
  end

  def unColor(nColor)
        @colores = Color.find(nColor)
      respond_to do |format|
        format.json  { render :json => 
          @colores.to_json(:only => [:id, :nombre, :referencia, :descripcion] ,
           :include => {:combinacon => {:only => :color2, :methods => [:nombre, :referencia]} } ) }
      end
  end
end
