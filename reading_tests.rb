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

def start_with_c?(string)
  string.split.select {|word| word.start_with?('c')}.length == string.split.length
end

def titlecase(string)
  string.split.map { |word| word.downcase.capitalize! }.join(' ')
end

def delete_last(string, range)
  range.times  do 
    string.chop! 
  end
  string
end

def to_money(float)
  str = float.round(2).to_s
    if str[-1] == '0' && str[-2] == '.'
      "$#{str}0" 
    else
      "$#{str}"
  end
end

def numeric?(string)
  if string.to_s.match(/\b\d+/) != nil
    true
  else 
    false
  end
end





