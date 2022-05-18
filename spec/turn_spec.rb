# frozen_string_literal: true

require_relative '../lib/turn'

describe Turn do
  let(:turn) { Turn.new }
  context 'when method first_ball' do
    it 'is class Integer' do
      expect(turn.first_ball.class).to eq(Integer)
    end
  end

  context 'when method second_ball' do
    it 'is class Integer' do
      expect(turn.second_ball.class).to eq(Integer)
    end
  end

  context 'when method spare?' do
    it 'is class nil' do
      expect(turn.spare?.class).to eq(NilClass)
    end
  end
end
