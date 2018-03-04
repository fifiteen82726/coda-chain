class CreateBlockChains < ActiveRecord::Migration[5.1]
  def change
    create_table :block_chains do |t|

      t.timestamps
    end
  end
end
