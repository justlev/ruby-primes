require('prime/generator')

RSpec.describe Prime::Generator, '#generate_primes' do
    context 'with valid input' do
        {
            1 => [2],
            10 => [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
        }.each do |input, expected_output|
            it 'returns expected primes array' do
                actual = Prime::Generator.generate_primes input
                expect(actual).to eq(expected_output)
            end
        end
    end

    context 'with invalid input' do
        it 'returns empty array' do
            actual = Prime::Generator.generate_primes -1
            expect(actual).to eq([])
        end
    end

    context 'with 0 input' do
        it 'returns empty array' do
            actual = Prime::Generator.generate_primes 0
            expect(actual).to eq([])
        end
    end
end