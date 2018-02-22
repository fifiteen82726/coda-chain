require_relative 'block.rb'

class Test < Block
end

# t = Test.new(1,2,3,4)
# t.explain

# t = Test.genesis
# t.explain

t = Test.mine_block(Test.genesis, '12312')
t.explain
