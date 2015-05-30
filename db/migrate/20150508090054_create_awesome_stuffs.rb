class CreateAwesomeStuffs < ActiveRecord::Migration
  def change
    create_table :awesome_stuffs do |t|
      t.string :name
      t.text :some_attribute
      t.integer :a_counter

      t.timestamps null: false
    end
  end
end
