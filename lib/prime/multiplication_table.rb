require 'matrix'

module Prime
  class MultiplicationTable
    def self.from_array(arr)
      return [] if arr.nil? || arr.empty?
      matrix = Matrix.build(arr.length + 1) do |i, j|
        if i.zero? && j.zero?
          0
        elsif i.zero?
          arr[j - 1]
        elsif j.zero?
          arr[i - 1]
        else
          arr[i - 1] * arr[j - 1]
        end
      end
      matrix
    end
  end
end
