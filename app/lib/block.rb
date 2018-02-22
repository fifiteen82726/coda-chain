class Block
  attr_accessor :timestamp, :last_hash, :hash_value, :data

  def initialize(timestamp, last_hash, hash_value, data)
    @timestamp = timestamp
    @last_hash = last_hash
    @hash_value = hash_value
    @data = data
  end

  def explain
    p '==== Block ==== '
    p "Timestamp: #{@timestamp}"
    p "last_hash: #{@last_hash}"
    p "hash_value: #{@hash_value}"
    p "data: #{@data}"
    p '==== Block ==== '
  end

  def self.genesis
    Block.new('Genesis time', '----', 'asd33psad1123', [])
  end

  def self.mine_block(last_block, data)
    timestamp = (Time.now.to_f * 1000).to_i # to milliseconds
    last_hash = last_block.last_hash
    hash_value = 'todo-hash'

    Block.new(timestamp, last_hash, hash_value, data)
  end
end
