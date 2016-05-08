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

def titlecase(str)

end




