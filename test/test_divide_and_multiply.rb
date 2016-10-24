require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/divide_and_multiply'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'divide_and_multiply' do


    it 'takes value as a named argument'  do
        proc { divide_and_multiply('non-keyword-argument') }.must_raise ArgumentError
        begin
          divide_and_multiply(value: 12)
        rescue ArgumentError
          flunk("Missing keyword argument value:")
        end
    end

    it 'returns an Array' do
        divide_and_multiply(value: 3).must_be_instance_of Array
    end

    it 'resturns an Array containing [1] if value: is 1' do
        divide_and_multiply(value: 1).must_equal [1]
    end

    it 'returns correct Arrays for example values' do
        divide_and_multiply(value: 3).must_equal  [3, 10, 5, 16, 8, 4, 2, 1]
        divide_and_multiply(value: 12).must_equal [12, 6, 3, 10, 5, 16, 8, 4, 2, 1]
        divide_and_multiply(value: 27).must_equal [27, 82, 41, 124, 62, 31, 94, 47, 142, 71, 214, 107, 322, 161, 484, 242, 121, 364, 182, 91, 274, 137, 412, 206, 103, 310, 155, 466, 233, 700, 350, 175, 526, 263, 790, 395, 1186, 593, 1780, 890, 445, 1336, 668, 334, 167, 502, 251, 754, 377, 1132, 566, 283, 850, 425, 1276, 638, 319, 958, 479, 1438, 719, 2158, 1079, 3238, 1619, 4858, 2429, 7288, 3644, 1822, 911, 2734, 1367, 4102, 2051, 6154, 3077, 9232, 4616, 2308, 1154, 577, 1732, 866, 433, 1300, 650, 325, 976, 488, 244, 122, 61, 184, 92, 46, 23, 70, 35, 106, 53, 160, 80, 40, 20, 10, 5, 16, 8, 4, 2, 1]
        divide_and_multiply(value: 1000).must_equal [1000, 500, 250, 125, 376, 188, 94, 47, 142, 71, 214, 107, 322, 161, 484, 242, 121, 364, 182, 91, 274, 137, 412, 206, 103, 310, 155, 466, 233, 700, 350, 175, 526, 263, 790, 395, 1186, 593, 1780, 890, 445, 1336, 668, 334, 167, 502, 251, 754, 377, 1132, 566, 283, 850, 425, 1276, 638, 319, 958, 479, 1438, 719, 2158, 1079, 3238, 1619, 4858, 2429, 7288, 3644, 1822, 911, 2734, 1367, 4102, 2051, 6154, 3077, 9232, 4616, 2308, 1154, 577, 1732, 866, 433, 1300, 650, 325, 976, 488, 244, 122, 61, 184, 92, 46, 23, 70, 35, 106, 53, 160, 80, 40, 20, 10, 5, 16, 8, 4, 2, 1]
    end

end