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
end
