class CreateGadgets < ActiveRecord::Migration
  def self.up
    create_table :gadgets do |t|
      t.string :name
      t.text :description
      t.integer :weight
      t.string :weight_unit

      t.timestamps
    end
  end

  def self.down
    drop_table :gadgets
  end
end
