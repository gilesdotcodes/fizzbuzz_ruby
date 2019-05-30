require_relative 'fizzbuzz'

describe FizzBuzz do
    let(:game) { FizzBuzz.new }

    it 'should work for the numbers 1-100' do        
        expect(game.numbers).to eq((1..100).to_a)
    end

    it 'should know if a number is divisible by 3' do
        expect(game.divisible_by(3, 9)).to eq(true)
    end

    it 'should know if a number is divisible by 5' do
        expect(game.divisible_by(5, 25)).to eq(true)
    end

    # it 'should know if a number is divisible by 3 and 5' do
    #     expect(game.divisible_by_3_and_5?(15)).to eq(true)
    # end

    it 'should output the number if not divisible by 3 or 5' do
        expect(game.number_output(1)).to eq('1')
    end

    it 'should output Fizz if the number is divisible by 3' do
        expect(game.number_output(6)).to eq('Fizz')
    end

    it 'should output Buzz if the number is divisible by 5' do
        expect(game.number_output(10)).to eq('Buzz')
    end

    it 'should output FizzBuzz if the number is divisible by 3 and 5' do
        expect(game.number_output(30)).to eq('FizzBuzz')
    end
end