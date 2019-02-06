require('prime')

RSpec.describe(Prime, '#print_matrix') do
  context 'with valid input' do
    {
      1 => Matrix.rows([[0, 2],
                        [2, 4]],),

      4 => Matrix.rows([[0, 2, 3, 5, 7],
                        [2, 4, 6, 10, 14],
                        [3, 6, 9, 15, 21],
                        [5, 10, 15, 25, 35],
                        [7, 14, 21, 35, 49]],),
    }.each do |input, expected_output|
      it 'returns expected primes array' do
        actual = Prime.print_matrix(input)
        expect(actual).to(eq(expected_output))
      end
    end
  end

  context 'with invalid input' do
    it 'returns empty array' do
      actual = Prime.print_matrix(-1)
      expect(actual).to(eq([]))
    end
  end

  context 'with 0 input' do
    it 'returns empty array' do
      actual = Prime.print_matrix(0)
      expect(actual).to(eq([]))
    end
  end
end
