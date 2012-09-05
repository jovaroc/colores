class CreateCombinacons < ActiveRecord::Migration
  def change
    create_table :combinacons do |t|
      t.integer :color_id
      t.integer :color2

      t.timestamps
    end
  end
end
