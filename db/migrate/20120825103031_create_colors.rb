class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :nombre
      t.string :referencia
      t.string :descripcion

      t.timestamps
    end
  end
end
