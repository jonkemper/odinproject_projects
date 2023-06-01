def caesar_cipher(phrase, shift_factor)
    cipher = []
    phrase_to_ascii = phrase.bytes #convert chracters from the phrase into an array of ASCII values

    phrase_to_ascii.each do |ascii_index| 
      case ascii_index
      when 65..90
        new_index = (((ascii_index - 64) + shift_factor) % 26) + 64 #calculation taking into account 'A' having an ASCII value of 65
			when 97..122
				new_index = (((ascii_index - 96) + shift_factor) % 26) + 96 #calculation taking into account 'a' having an ASCII value of 97
			else
				new_index = ascii_index
			end

      cipher.push(new_index.chr) #convert ASCII back into chracters
    end

    cipher.join('')
end

def get_input(prompt)
	print prompt
	gets.chomp
end

loop do
	phrase = get_input("Enter a phrase to apply the cipher. (Type STOP to quit.): ")

	if phrase =="STOP"
		exit
	end

	puts "Your encoded phrase is: " + caesar_cipher(phrase, 5) #a shift of 5 is hard-coded to match the TOP project example
end