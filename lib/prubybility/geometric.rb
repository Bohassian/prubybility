# frozen_string_literal: true

module Prubybility
  # A representation of the Geometric probability distribution.
  #
  # See README for example usages.
  class Geometric < NegativeBinomial
    def initialize(theta)
      super(1, theta)
    end

    def p(var)
      return if var < 1 && !var.is_a? Integer

      (theta) * (1 - theta)**(var - 1)
    end
  end
end
