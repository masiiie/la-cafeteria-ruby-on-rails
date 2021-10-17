class CreateMercancia < ActiveRecord::Migration[5.0]
  def change
    create_table :mercancia do |t|
      t.references :product, foreign_key: true
      t.references :jornada, foreign_key: true
      t.integer :recibido

      t.timestamps
    end
  end
end
