require 'openssl'

class Block < ApplicationRecord
  belongs_to :block_chain, optional: true

  def explain
    p '==== Block ==== '
    p "Timestamp: #{created_at}"
    p "last_hash: #{last_hash}"
    p "hash_value: #{hash_value}"
    p "data: #{data}"
    p '==== Block ==== '
  end

  def self.genesis!(block_chain_id)
    Block.create!(
      last_hash: Digest::SHA256.hexdigest('first hash value'),
      hash_value: Digest::SHA256.hexdigest('hash_value'),
      data: 'data',
      block_chain_id: block_chain_id,
    )
  end

  def self.mine_block!(last_block, data, block_chain_id)
    timestamp = Time.now.to_i
    last_hash = last_block.last_hash
    hash_value = Block.compute_hash_value(timestamp, last_hash, data)

    Block.create!(
      last_hash: last_hash,
      hash_value: hash_value,
      data: data,
      block_chain_id: block_chain_id,
    )
  end

  def self.compute_hash_value(timestamp, last_hash, data)
    key = 'secret'
    OpenSSL::HMAC.hexdigest('SHA256', key, "#{timestamp}#{last_hash}#{data}")
  end
end
