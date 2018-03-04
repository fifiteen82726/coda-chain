class CreateBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :blocks do |t|
      t.string :last_hash
      t.string :hash_value
      t.string :data

      t.timestamps
    end
  end
end
