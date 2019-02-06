module Prime
  class Console
    def self.pretty_print_matrix(matrix)
      puts matrix.to_a.map { |row| row.join(', ') }
    end
  end
end
