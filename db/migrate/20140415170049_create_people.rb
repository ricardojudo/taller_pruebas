class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.date :bod
      t.decimal :height
      t.boolean :alive

      t.timestamps
    end
  end
end
