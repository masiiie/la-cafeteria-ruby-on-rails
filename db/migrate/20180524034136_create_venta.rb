class CreateVenta < ActiveRecord::Migration[5.0]
  def change
    create_table :venta do |t|
      t.references :mercancia, foreign_key: true
      t.time :momento

      t.timestamps
    end
  end
end
