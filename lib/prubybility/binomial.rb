# frozen_string_literal: true

module Prubybility
  # A representation of the Binomial probability distribution.
  #
  # See README for example usages.
  class Binomial
    attr_reader :n, :theta, :expected_value, :variance

    alias mean expected_value

    def initialize(number_of_trials, theta)
      @n = number_of_trials
      @theta = theta.to_d
      @expected_value = @n * @theta
      @variance = @n * @theta * (1 - @theta)
    end

    def p(var)
      choose(var) * (theta**var) * ((1 - theta)**(n - var))
    end

    private

    def choose(var)
      Prubybility::Combinations.choose(n, var)
    end

    attr_writer :n, :theta, :expected_value, :variance
  end
end
