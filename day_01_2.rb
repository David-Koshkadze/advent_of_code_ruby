require_relative 'test_01'

final_sum = 0

File.foreach("values_01.txt") do |line|
  numbers = []

  numbers.push(extract_numbers(line))

  # puts numbers
  # puts "----"

  # puts extract_numbers(line)
  puts numbers.class
  puts "#{numbers}"
  puts "#{numbers[0][0]}#{numbers[0][-1]}".to_i
  final_sum += "#{numbers[0][0]}#{numbers[0][-1]}".to_i
end

puts final_sum

# first_and_last = "#{found_numbers.first}#{found_numbers.last}".to_i

puts extract_numbers("eightwothree")