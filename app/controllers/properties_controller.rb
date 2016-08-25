class PropertiesController < ApplicationController
  def index
  	@rentas = Property.where(renta: true)
  	@ventas = Property.where(venta: true)
  end
end
