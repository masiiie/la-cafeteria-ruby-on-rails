class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.text :descripcion
      t.string :foto
      t.decimal :precio
      t.string :medicion

      t.timestamps
    end
  end
end
