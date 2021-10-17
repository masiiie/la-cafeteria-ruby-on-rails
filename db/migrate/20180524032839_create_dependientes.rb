class CreateDependientes < ActiveRecord::Migration[5.0]
  def change
    create_table :dependientes do |t|
      t.text :nombre
      t.text :direccion
      t.integer :telefono

      t.timestamps
    end
  end
end
