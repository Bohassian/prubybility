# frozen_string_literal: true

module Prubybility
  # A representation of the Negative Binomial probability distribution.
  #
  # See README for example usages.
  class NegativeBinomial
    include Prubybility::Combinations

    attr_reader :k, :theta, :expected_value, :variance

    alias mean expected_value

    def initialize(fixed_successes, theta)
      @k = fixed_successes
      @theta = theta.to_d
      @expected_value = @k / @theta
      @variance = @k / @theta * (1 / @theta - 1)
    end

    def p(var)
      choose(var - 1, k - 1) * (theta**k) * ((1 - theta)**(var - k))
    end

    private

    attr_writer :n, :theta, :expected_value, :variance
  end
end
