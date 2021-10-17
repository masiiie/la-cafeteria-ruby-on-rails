class CreateJornadas < ActiveRecord::Migration[5.0]
  def change
    create_table :jornadas do |t|
      t.date :fecha
      t.decimal :fondo_inicial
      t.decimal :fondo_final
      t.references :dependiente, foreign_key: true

      t.timestamps
    end
  end
end
