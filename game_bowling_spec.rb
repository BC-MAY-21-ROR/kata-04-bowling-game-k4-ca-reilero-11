require 'rspec'
require './game_bowling.rb'
describe Bowling do
  describe 'tries' do
    it 'returns an array with points' do
      bowling = Bowling.new
      expect(bowling.tries).to_not be_nil
    end
    describe 'tries' do
      it 'returns an array with 10 points' do
        bowling = Bowling.new
        expect(bowling.tries.length).to eq(10)
      end
    end
  end
end
