class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :nombre
      t.text :descripcion
      t.float :metros_cuadrados
      t.string :direccion
      t.boolean :renta
      t.float :precio_renta
      t.boolean :venta
      t.float :precio_venta
      t.boolean :terreno, :default => false
      t.boolean :local, :default => false
      t.boolean :casa, :default => false
      t.boolean :departamento, :default => false
      t.boolean :bodega, :default => false
      t.boolean :oficina, :default => false
      
      t.timestamp
    end
  end
end
