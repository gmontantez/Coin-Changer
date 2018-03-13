require "minitest/autorun"
require_relative "coin_changer_ex.rb"
 
class Codeword_exercise < Minitest::Test
	def test_boolean
		assert_equal(true,true)
	end

	def test_for_hash
		call_hash = coin_changer(11) 
		assert_equal(Hash, call_hash.class)
	end
end