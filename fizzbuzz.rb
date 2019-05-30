class FizzBuzz
    def numbers
        (1..100).to_a
    end

    def divisible_by(divisor, number)
        number % divisor == 0
    end

    # def divisible_by_3_and_5?(number)
    #     divisible_by(3, number) && divisible_by(5, number)
    # end

    def number_output(number_to_output)
        if divisible_by(3, number_to_output) && divisible_by(5, number_to_output)
            'FizzBuzz'
        elsif divisible_by(3, number_to_output)
            'Fizz'
        elsif divisible_by(5, number_to_output)
            'Buzz'
        else
            number_to_output.to_s
        end
    end

    def run
        array  = []
        
        numbers.each do |number|
            array << number_output(number)
        end
        
        print array.join(', ')
    end
end