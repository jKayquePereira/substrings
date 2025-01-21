# frozen_string_literal: true

def substrings(word)
  dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
  match_counts = {}

  dictionary.each do |entry|
    count = word.scan(entry).count
    match_counts[entry] = count if count.positive?
  end

  if match_counts.any?
    match_counts.each do |substring, count|
      puts "#{substring} => #{count}"
    end
  else
    puts 'No substrings found.'
  end
end

puts "Enter a word or phrase:"
input = gets.chomp
substrings(input)
