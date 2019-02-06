module Prime
  require 'prime/generator'
  require 'prime/console'
  require 'prime/multiplication_table'

  def self.print_matrix(length)
    return [] if length <= 0
    prime_numbers = Generator.generate_primes(length)

    # build matrix
    table = MultiplicationTable.from_array(prime_numbers)

    Console.pretty_print_matrix(table)

    table
  end
end
