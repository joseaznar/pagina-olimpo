class RemoveTypeColumnsProperties < ActiveRecord::Migration
  def change
  	remove_column :properties, :terreno
  	remove_column :properties, :local
  	remove_column :properties, :casa
  	remove_column :properties, :departamento
  	remove_column :properties, :bodega
  	remove_column :properties, :oficina
  end
end
