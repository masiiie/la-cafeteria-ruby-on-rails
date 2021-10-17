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

ActiveRecord::Schema.define(version: 20180717213931) do

  create_table "dependientes", force: :cascade do |t|
    t.text     "nombre"
    t.text     "direccion"
    t.integer  "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jornadas", force: :cascade do |t|
    t.date     "fecha"
    t.decimal  "fondo_inicial"
    t.decimal  "fondo_final"
    t.integer  "dependiente_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["dependiente_id"], name: "index_jornadas_on_dependiente_id"
  end

  create_table "mercancia", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "jornada_id"
    t.integer  "recibido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jornada_id"], name: "index_mercancia_on_jornada_id"
    t.index ["product_id"], name: "index_mercancia_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "foto"
    t.decimal  "precio"
    t.string   "medicion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "venta", force: :cascade do |t|
    t.integer  "mercancia_id"
    t.time     "momento"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["mercancia_id"], name: "index_venta_on_mercancia_id"
  end

end
