require 'optparse'
require 'prime'

length = 10
OptionParser.new do |opts|
    opts.on('--count') do
        length = ARGV[0].to_i
    end
end.parse!

Prime::print_matrix(length)