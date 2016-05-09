def word_count(string)
	string = string.split
	
	string.count
end

def average_word_length(string)

	num_of_words = word_count(string)

	string = string.split("")

	string.each do |letter|
		if letter == " "
			string.delete(letter)
		else
			letter
		end
	end

	num_of_letters = string.count
	
	p num_of_letters = num_of_letters * 1.00
	
	p num_of_words = num_of_words * 1.00
	
	ans = (num_of_letters/num_of_words).round(2)
		if num_of_letters == 0.0 && num_of_words == 0.0
			return nil
		else
			return ans
		end

end

def palindrome?(string)

	if string == string.reverse
		return true
	else
		return false
	end

end

def vowels(str)

	words_with_vowels = []
	
	str = str.split

	str.each do |word|
		if word.include?("a") || word.include?("e") || word.include?("i") || word.include?("o") || word.include?("u")
			words_with_vowels << word
		else
			word
		end
	end
	
	words_with_vowels

end

def start_with_c?(str)

	str = str.split
	
	i = 0
	
	str.each do |word|
		p word[0]
		if word[0] == "c" || word[0] == "C"
			i += 1
		else
			i += 0
		end
	end

	if i == str.length
		return true
	else
		return false
	end

end

def titlecase(str) # I spent HOURS on this

	str.split(/ |\_|\-/).map(&:capitalize).join(" ")

end

# doesn't work on second test:
# def delete_last(str, num)

# 	str.reverse!
	
# 	str = str.split("")
	
# 	i = 0
	
# 	while i < num
# 	 str.delete_at(i)
# 	 i += 1
# 	end
	
# 	str.reverse!
# 	str = str.join

# end

def delete_last(str, num)

	num *= -1
	
	i = -1
	
	until i < num
		str.slice!(i)
		p str
		i -= 1
	end
	
	str

end

def to_money(num)

	num = num.round(2)
	
	num = num.to_s
	
	num = '$' + num
	
	if num[-1] == '0'
		if num[-2] == '.'
			num += '0'
		end
	end

	num
	
end

def numeric?(num)

if num.class == Float || num.class == Fixnum
		return true
	else
		return false
end

end

def mean(arr)

	sum = 0
	
	arr.each do |n|
		sum += n
	end
	
	sum = sum.to_f

	sum/arr.length

end

def super_compact(arr)

	arr.compact!
	
	arr.select { |val| val.length > 0 }
end

def mode(arr)
	
	hash = {}
	
	arr.each do |val|
		hash[val] = arr.count(val)
	end

	a = []
	
	hash.each do |key, value|
		a << hash[key]
	end
	
	a = winnow(a)
	
	hash.each do |key, value|
		if hash[key] == a[0]
			return key
		else
			hash[key]
		end
	end
	
end

def winnow(arr) # use in tandem with mode
	
	return arr if arr.length == 1
	
	if arr[0] < arr[1]
		arr.delete_at(0)
		winnow(arr)
	else
		arr.delete_at(1)
		winnow(arr)
	end
	
end

def symbolize(arr)
	
	arr.map! do |val|
		val.to_sym
	end
	
	arr
	
end
