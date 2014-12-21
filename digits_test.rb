require 'minitest/autorun'
require './digits'

class DigitsTest < Minitest::Test
	def test_it_knows_42_is_one
		assert_equal 1, digitize("42")
	end

	def test_it_knows_12_is_two
		assert_equal 2, digitize("12")
	end

	def test_it_can_handle_digit_of_zero
		assert_equal 1, digitize("100")
	end

	def test_it_can_handle_identical_digits
		assert_equal 3, digitize("1012")
	end

end
