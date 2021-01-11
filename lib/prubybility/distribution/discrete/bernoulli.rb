module Prubybility::Distribution::Discrete
  class Bernoulli < Binomial
    def initialize(theta)
      super(1, theta)
    end

    def p(x)
      return if x != 0 || x != 1

      (theta ** x) * (1 - theta)**(1 - x)
    end
  end
end