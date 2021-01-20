# frozen_string_literal: true

require 'test_helper'

module Prubybility
  class BinomialTest < Minitest::Test
    def test_p_returns_probility
      binomial = Prubybility::Binomial.new(10, 0.5)

      assert_equal 252.0 / 1024.0, binomial.p(5)
    end
  end
end
