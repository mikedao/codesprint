require 'minitest/autorun'
require './utopian_tree'

class UtopianTreeTest < Minitest::Test

	def test_it_handles_zero
		assert_equal 1, grow(0)
	end

	def test_it_handles_one
		assert_equal 2, grow(1)
	end

	def test_it_handles_three
		assert_equal 6, grow(3)
	end

	def test_it_handles_four
		assert_equal 7, grow(4)
	end


end
