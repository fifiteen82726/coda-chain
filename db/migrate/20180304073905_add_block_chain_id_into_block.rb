class AddBlockChainIdIntoBlock < ActiveRecord::Migration[5.1]
  def change
    add_column :blocks, :block_chain_id, :integer
    add_index :blocks, :block_chain_id
  end
end
