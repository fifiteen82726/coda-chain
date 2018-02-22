class BlockChain
  attr_accessor :chain

  def initialize
    @chain = [Block.genesis]
  end

  def add_block(data)
    last_block = chain[chain.count - 1]
    block = Block.mine_block(last_block, data)
    chain.push(block)

    block
  end
end
