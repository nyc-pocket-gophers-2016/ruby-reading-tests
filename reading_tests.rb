def word_count(string)
  string.split(" ").count
end


def average_word_length(string)
  if string.empty?
    return nil
  else
    sum = 0
    word_array = string.split
    word_array.each { |word| sum += word.length.to_f }
    sum / word_array.count
  end
end


def palindrome?(word)
  if word == word.reverse
    true
  else
    false
  end
end


def vowels(string)
  string.split.select { |word| word.match(/[aeiou]/) }
end

# def vowels(string)
#   string.split.keep_if { |word| word =~ /[aeiou]/ }
# end


def start_with_c?(string)
  string.split.map! do |word|
    string = word[0] == "c"
  end
  string
end


def titlecase(string)
  string.split.map! { |word| word.capitalize }.join(" ")
end


def delete_last(string, num)
  string.replace(string[0...-num])
end


def to_money(num)
  "$" + "%.2f" % num
end


def numeric?(elm)
  elm.is_a? Float
end


def mean(arr)
  arr.reduce(:+) / arr.count.to_f
end


def super_compact(arr)
  arr.delete_if do |elm|
    elm == nil || elm == [] || elm == ""
  end
end


def mode(arr)
  arr.max_by { |elm| arr.count(elm) }
end


def symbolize(arr)
  arr.map { |elm| elm.to_sym }
end


