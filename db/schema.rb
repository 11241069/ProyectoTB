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

ActiveRecord::Schema.define(version: 20150325190900) do

  create_table "asesors", force: :cascade do |t|
    t.string   "NombreAsesor"
    t.string   "ApellidoAsesor"
    t.string   "NumeroTelefono"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "autos", force: :cascade do |t|
    t.integer  "cliente_id"
    t.string   "Placa"
    t.string   "Modelo"
    t.string   "NumeroMotor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "autos", ["cliente_id"], name: "index_autos_on_cliente_id"

  create_table "cita", force: :cascade do |t|
    t.integer  "auto_id"
    t.string   "Placa"
    t.string   "NombreCliente"
    t.string   "Estado"
    t.string   "TelefonoContacto"
    t.datetime "FechaHoraEntrada"
    t.datetime "FechaEstimadaEntrega"
    t.integer  "asesor_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "cita", ["asesor_id"], name: "index_cita_on_asesor_id"
  add_index "cita", ["auto_id"], name: "index_cita_on_auto_id"

  create_table "cita_mecanicos", id: false, force: :cascade do |t|
    t.integer "Citum_id"
    t.integer "Mecanico_id"
  end

  add_index "cita_mecanicos", ["Citum_id"], name: "index_cita_mecanicos_on_Citum_id"
  add_index "cita_mecanicos", ["Mecanico_id"], name: "index_cita_mecanicos_on_Mecanico_id"

  create_table "clientes", force: :cascade do |t|
    t.string   "NombreCliente"
    t.string   "ApellidoCliente"
    t.string   "Email"
    t.string   "Direccion"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "mecanicos", force: :cascade do |t|
    t.integer  "asesor_id"
    t.string   "NombreMecanico"
    t.string   "ApellidoMecanico"
    t.string   "NumeroTelefono"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "numeros_telefonos", force: :cascade do |t|
    t.integer  "cliente_id"
    t.string   "Numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "numeros_telefonos", ["cliente_id"], name: "index_numeros_telefonos_on_cliente_id"

  create_table "servicios", force: :cascade do |t|
    t.integer  "citum_id"
    t.integer  "Tipo"
    t.string   "Descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
