def reverse_words(sentence)
	reversed_sentence = ""
	array = sentence.split(' ')
	array.each do |word|
		reversed_word = ""
		counter = -1
		word.length.times do
			reversed_word << word[counter]
			counter -=1
		end
		reversed_sentence << reversed_word
		if array[-1] != word
			reversed_sentence << " "
		end
	end
	return reversed_sentence
end
