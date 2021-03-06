# frozen_string_literal: true

require 'test_helper'

describe Prubybility::Binomial do
  subject { Prubybility::Binomial.new(10, 0.5) }

  describe 'instance methods' do
    describe '#p' do
      it 'returns a probability' do
        assert_equal 252.0 / 1024.0, subject.p(5)
      end
    end
  end

  describe 'behavior' do
    it 'calculates and sets the expected value on initialization' do
      assert_equal 10 * 0.5, subject.expected_value
    end

    it 'aliases #mean for #expected_value' do
      assert_equal subject.mean, subject.expected_value
    end

    it 'calculates and sets the variance on initialization' do
      assert_equal 10 * 0.5 * (1 - 0.5), subject.variance
    end
  end
end
