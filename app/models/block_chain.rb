class BlockChain < ApplicationRecord
  has_many :blocks, dependent: :destroy
end
