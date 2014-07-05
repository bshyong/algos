# problem
# find the minimum number of coins M that
# that sum up to the value V
#
# inputs:
# coins, an array of coins where each
# element in A is the value of the coin
# sum, the target sum that we want to achieve

def solution(coins, sum)
  sums = Hash.new
  sums[0] = 0

  (1..sum).each do |s|
    counts = Array.new

    coins.each do |c|
      next if c > s
      counts << sums[s-c] + 1 if !sums[s-c].nil?
    end

    sums[s] = counts.min
  end
  sums[sum]
end

require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!

class TestCases < Minitest::Test
  def test_solution
    assert_equal solution([1,3,5], 11), 3
    assert_equal solution([5], 11), nil
    assert_equal solution([3], 3), 1
  end
end

