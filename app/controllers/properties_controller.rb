class PropertiesController < ApplicationController
  def index
  	@rentas = Property.where(renta: true)
  	@ventas = Property.where(venta: true)
  end

  def rentas
  	@rentas = Property.where(renta: true)
  end

  def ventas
  	@ventas = Property.where(venta: true)
  end

  def new
    if sign_in?
      @property = Property.new
    else      
      redirect_to new_session_path
    end
  end

  def create 
    Property.create(property_params)
    redirect_to root_path
  end

  private 

  def property_params
    params.require(:property).permit(:nombre, 
                                     :descripcion,
                                     :metros_cuadrados, 
                                     :direccion, 
                                     :renta, 
                                     :precio_renta, 
                                     :venta, 
                                     :precio_venta) 
  end 
end
