module Prime
  class Generator
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
