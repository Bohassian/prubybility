# frozen_string_literal: true

module Prubybility
  # A representation of the Binomial probability distribution.
  #
  # See README for example usages.
  class Binomial
    include Prubybility::Combinations

    attr_reader :n, :theta, :expected_value, :variance

    alias mean expected_value

    def initialize(num, theta)
      @n = num
      @theta = theta.to_d
      @expected_value = num * @theta
      @variance = num * @theta * (1 - @theta)
    end

    def p(var)
      choose(n, var) * (theta**var) * ((1 - theta)**(n - var))
    end

    private

    attr_writer :n, :theta, :expected_value, :variance
  end
end
