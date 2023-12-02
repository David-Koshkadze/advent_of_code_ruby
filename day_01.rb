# get file input
# read numbers line by line and add each number
# finally add all numbers

# file = File.open("values_01.txt")
#
# puts file
#
# puts file.read
#
# puts "-----------------------"

# file_data = file.readlines.map(&:chomp)
#
# puts file_data
#
# file.close

# sum = 0


# line.scan(/\d+/)

# a = File.foreach("values_01.txt") { |line| line }
# puts "---------------------------------------"
# a = File.read("values_01.txt").split[1]
#
# puts a
#
# puts a.scan(/\d+/)

def numeric?(string)
  true if Float(string) rescue false
end

# numbers = []
#
# a.split('').each do |char|
#   if numeric?(char)
#     numbers.push(char.to_i)
#   end
# end
#
# n = "#{numbers.first}#{numbers.last}".to_i
#
# puts n

final_sum = 0

File.foreach("values_01.txt") do |line|
  numbers = []
  line.split('').each do |char|
    if numeric?(char)
      numbers.push(char)
    end
  end

  final_sum += "#{numbers.first}#{numbers.last}".to_i

end

puts final_sum
