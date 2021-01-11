module Prubybility::Distribution::Discrete
  class Binomial
    attr_reader :n, :theta
    
    def initialize(n, theta)
      @n = n
      @theta = theta
    end

    def p(x)
    end
  end
end