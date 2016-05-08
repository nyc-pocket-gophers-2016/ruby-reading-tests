require 'pry'

def word_count(string)
  string.split.length
end

def average_word_length(string)
  if string == ""
   return nil
  else
    words = string.split.length
    count = string.split.join.length
    count.to_f/words.to_f
  end
end

def palindrome?(string)
  string == string.reverse
end

def vowels(string)
  string.split.select{ |idx| idx.match(/[aeiou]/) }
end

