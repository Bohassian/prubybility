# frozen_string_literal: true
require 'fiddle'
require 'fiddle/import'

module Prubybility
  # This module provides a way to calculate combinations to be
  # used by the probability distributions defined in this gem.
  #
  # Please note, it is not intended to be used outside of this
  # context and may return unexpected answers if used in such
  # manner.
  module Combinations
    extend Fiddle::Importer
    dlload File.expand_path('libprubybility.so', __dir__)
    extern 'void free_binom(char*)'
    extern 'char* binom(long, long)'

    def self.choose(x, y)
      return unless valid_input?(x, y)

      ptr = binom(x, y)
      int = ptr.to_s.to_i
      free_binom(ptr)
      int
    end

    private

    def self.valid_input?(x, y)
      return false unless x.is_a?(Integer) && y.is_a?(Integer)
      return false unless x > 0 && y > 0
      return false unless x < 2**64 && y < 2**64
      return false unless x >= y
      true
    end
  end
end
