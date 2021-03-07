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
      ptr = binom(x, y)
      int = ptr.to_s.to_i
      free_binom(ptr)
      int
    end
  end
end
