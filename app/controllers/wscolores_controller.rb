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
    @colores = Color.find(2)
      respond_to do |format|
        format.xml  { render :xml => @colores.to_xml(:only => [:id, :nombre, :descripcion] ) }
      end
  end

end
