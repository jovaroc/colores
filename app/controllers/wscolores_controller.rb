class WscoloresController < ApplicationController
  def leer3
    @colores = Color.all
    
    respond_to do |format|
      format.xml  { render :xml => @colores.to_xml(:only => [:id, :nombre, :descripcion] ) }
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
        format.xml  { render :xml => @colores.to_xml(:only => [:id, :nombre, :descripcion] ) }
      end
  end
end
