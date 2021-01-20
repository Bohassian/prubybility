# frozen_string_literal: true

module Prubybility
  # This module provides a way to calculate combinations to be
  # used by the probability distributions defined in this gem.
  #
  # Please note, it is not intended to be used outside of this
  # context and may return unexpected answers if used in such
  # manner.
  module Combinations
    class NumberOutOfRangeError < StandardError; end

    class WrongTypeError < StandardError; end

    private

    def choose(num, var)
      raise WrongTypeError unless num.is_a? Integer
      raise NumberOutOfRangeError if var.negative?
      raise NumberOutOfRangeError if var > num

      num.downto(num - var + 1).inject(:*) / (1..var).inject(:*)
    end
  end
end
