def numeric?(string)
  true if Float(string) rescue false
end

final_sum = 0

# now we need to check for numbers as words

def check_word_number(word)
  case word
  when "one" then 1
  when "two" then 2
  when "three" then 3
  when "four" then 4
  when "five" then 5
  when "six" then 6
  when "seven" then 7
  when "eight" then 8
  when "nine" then 9
  else ""
  end
end

n_word = "nine"

puts check_word_number(n_word)
puts check_word_number("six")

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