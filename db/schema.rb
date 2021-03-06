# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160825150448) do

  create_table "properties", force: :cascade do |t|
    t.string  "nombre"
    t.text    "descripcion"
    t.float   "metros_cuadrados"
    t.string  "direccion"
    t.boolean "renta"
    t.float   "precio_renta"
    t.boolean "venta"
    t.float   "precio_venta"
    t.boolean "terreno",          default: false
    t.boolean "local",            default: false
    t.boolean "casa",             default: false
    t.boolean "departamento",     default: false
    t.boolean "bodega",           default: false
    t.boolean "oficina",          default: false
  end

end
