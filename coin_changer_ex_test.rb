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
	def test_for_one_cent_one_penny
		call_hash = coin_changer(1)
		assert_equal({"penny" => 1 }, call_hash)
	end
	def test_for_two_cents_two_penny
		call_hash = coin_changer(2)
		assert_equal({"penny" => 2 }, call_hash)
	end
	def test_for_5_cents_nickel
		call_hash = coin_changer(5)
		assert_equal({"nickel" => 1 }, call_hash)
	end
	def test_for_7_cents_one_nickel_two_penny
		call_hash = coin_changer(7)
		assert_equal({"nickel" => 1, "penny" => 2}, call_hash)
	end

end