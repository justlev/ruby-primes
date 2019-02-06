require 'prime/multiplication_table'
require 'matrix'

RSpec.describe(Prime::MultiplicationTable, '#from_array') do
  context 'with valid input' do
    {
      [1] => Matrix.rows([[0, 1],
                          [1, 1]],),

      [1, 2] => Matrix.rows([[0, 1, 2],
                             [1, 1, 2],
                             [2, 2, 4]],),
    }.each do |input, expected_output|
      it 'returns expected primes array' do
        actual = Prime::MultiplicationTable.from_array(input)
        expect(actual).to(eq(expected_output))
      end
    end
  end

  context 'with empty array input' do
    it 'returns empty array' do
      actual = Prime::MultiplicationTable.from_array([])
      expect(actual).to(eq([]))
    end
  end

  context 'with invalid input' do
    it 'returns empty array' do
      actual = Prime::MultiplicationTable.from_array(nil)
      expect(actual).to(eq([]))
    end
  end
end
