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
end
