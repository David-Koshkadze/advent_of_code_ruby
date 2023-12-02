def extract_numbers(string)
  number_words = {
    "one" => 1, "two" => 2, "three" => 3,
    "four" => 4, "five" => 5, "six" => 6,
    "seven" => 7, "eight" => 8, "nine" => 9,
    "zero" => 0
  }

  found_numbers = []

  index = 0

  (string.downcase.scan(/(?:one|two|three|four|five|six|seven|eight|nine)|\d/) || []).each_with_index do |match|
    number = number_words[match] || match.to_i
    found_numbers << { number: number, index: index }
    index += 1
  end

  found_numbers.sort_by { |num| num[:index] }.map { |num| num[:number] }

  found_numbers.map! {|n| n[:number]}

  found_numbers
end

# puts extract_numbers("helloonenineight12three")
