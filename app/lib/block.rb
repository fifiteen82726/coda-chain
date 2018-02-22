class Block
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
end
