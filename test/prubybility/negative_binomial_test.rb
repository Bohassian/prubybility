# frozen_string_literal: true

require 'test_helper'

describe Prubybility::NegativeBinomial do
  subject { Prubybility::NegativeBinomial.new(10, 0.5) }

  describe 'instance methods' do
    describe '#p' do
      it 'returns a probability' do
        assert_equal 0.0048828125, subject.p(11)
      end
    end
  end

  describe 'behavior' do
    it 'calculates and sets the expected value on initialization' do
      assert_equal 10 / 0.5, subject.expected_value
    end

    it 'aliases #mean for #expected_value' do
      assert_equal subject.mean, subject.expected_value
    end

    it 'calculates and sets the variance on initialization' do
      assert_equal 10 / 0.5 * (1 / 0.5 - 1), subject.variance
    end
  end
end
