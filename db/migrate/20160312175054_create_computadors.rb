class CreateComputadors < ActiveRecord::Migration
  def change
    create_table :computadors do |t|
      t.string :cpu
      t.string :memoria
      t.integer :disco
      t.string :disco_mag

      t.timestamps null: false
    end
  end
end
