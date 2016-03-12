class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.integer :edad
      t.string :telefono

      t.timestamps null: false
    end
  end
end
