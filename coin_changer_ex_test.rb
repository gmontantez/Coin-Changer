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
	def test_for_10_cents_dime
		call_hash = coin_changer(10)
		assert_equal({"dime" => 1 }, call_hash)
	end
	def test_for_11_cents_one_dime_one_penny
		call_hash = coin_changer(11)
		assert_equal({"dime" => 1, "penny" => 1}, call_hash)
	end
	def test_for_25_cents_quarter
		call_hash = coin_changer(25)
		assert_equal({"quarter" => 1 }, call_hash)
	end
	def test_for_31_cents_one_quarter_one_nickel_one_penny
		call_hash = coin_changer(31)
		assert_equal({"quarter" => 1, "nickel" => 1, "penny" => 1}, call_hash)
	end
	def test_for_93_cents_3_quarter_one_dime_one_nickel_three_penny
		call_hash = coin_changer(93)
		assert_equal({"quarter" => 3, "dime" => 1, "nickel" => 1, "penny" => 3}, call_hash)
	end
	def test_for_89_cents_3_quarter_one_dime_one_nickel_three_penny
		call_hash = coin_changer(89)
		assert_equal({"quarter" => 3, "dime" => 1, "nickel" => 0, "penny" => 4}, call_hash)
	end
	# def test_for_hash_test
	# 	call_hash = plural_coin({"quarters" => 2}) 
	# 	assert_equal(Hash, call_hash.class)
	# end
	# def test_for_plural_quarter
	# 	hash_test = {"quarter" => 2} 
	# 	assert_equal({"quarters" => 2}, plural_coin(hash_test))
	# end
	# def test_for_plural_dime
	# 	hash_test = {"dime" => 2} 
	# 	assert_equal({"dimes" => 2}, plural_coin(hash_test))
	# end
	# def test_for_plural_all_twos
	# 	hash_test = {"quarter" => 2, "dime" => 2, "nickel" => 2, "penny" => 2} 
	# 	assert_equal({"quarters" => 2, "dimes" => 2, "nickels" => 2, "pennies" => 2}, plural_coin(hash_test))
	# end
	# def test_for_plural_all_zero
	# 	hash_test = {"quarter" => 0, "dime" => 0, "nickel" => 0, "penny" => 0} 
	# 	assert_equal({"quarters" => 0, "dimes" => 0, "nickels" => 0, "pennies" => 0}, plural_coin(hash_test))
	# end
	# def test_for_59_cents
	# 	hash_test = {"quarter" => 2, "dime" => 0, "nickel" => 1, "penny" => 4} 
	# 	assert_equal({"quarters" => 2, "dimes" => 0, "nickel" => 1, "pennies" => 4}, plural_coin(hash_test))
	# end
	# def test_for_all_ones
	# 	hash_test = {"quarter" => 1, "dime" => 1, "nickel" => 1, "penny" => 1} 
	# 	assert_equal({"quarter" => 1, "dime" => 1, "nickel" => 1, "penny" => 1}, plural_coin(hash_test))
	# end
	# def test_functions_working_together
	# 	cents = 49
	# 	#singular_hash = coin_changer(cents)
	# 	#print singular_hash
	# 	assert_equal({"quarter" => 1, "dime" => 2, "nickel" => 0, "penny" => 4}, coin_changer(cents))

	# end
	
end