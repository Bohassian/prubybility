# frozen_string_literal: true

module Prubybility
  # A representation of the Binomial probability distribution.
  #
  # See README for example usages.
  class Bernoulli < Binomial
    def initialize(theta)
      super(1, theta)
    end

    def p(var)
      return if var != 0 && var != 1

      (theta**var) * (1 - theta)**(1 - var)
    end
  end
end
