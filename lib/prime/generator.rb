module Prime
  class Generator
    # Returns an array in the length of {amount} filled with prime numbers, starting from 2.
    #
    # I chose this algorithm over the standard Sieve of Eratosthenes on purpose:
    # This solution is not using pre-processing of an array, so it is not limited to an array size.
    # Its only limitation is the computational power of your machine + patience.
    # Since the requirement was to be ready for any length of a matrix,
    # it might be more efficient to use this technique instead of pre-processing of Eratosthenes array.
    def self.generate_primes(amount = 4)
      primes = []
      return primes if amount <= 0
      num_to_check = 2
      check_from = 2
      while primes.length < amount
        check_from.upto(num_to_check) do |x|
          primes.push(x) if x == num_to_check
          break if num_to_check % x == 0
        end
        num_to_check += 1
      end
      primes
    end
  end
end
