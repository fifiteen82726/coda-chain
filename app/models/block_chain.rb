class BlockChain < ApplicationRecord
  has_many :blocks, dependent: :destroy

  after_create :add_genesis_block!

  def add_genesis_block!
    blocks << Block.genesis!(id)
  end

  def add_block!(data)
    last_block = blocks.last
    new_block = Block.mine_block!(last_block, data, id)

    new_block
  end
end



# Test script


# chain = BlockChain.create!
# chain.add_block!('dddaaaa')

