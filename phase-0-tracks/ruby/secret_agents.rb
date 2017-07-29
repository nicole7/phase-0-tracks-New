## METHOD DECLARATIONS

# define method to encrypt
# push each letter one forward
def encrypt(phrase)
	index = 0
	while index < phrase.length
		if phrase[index] == " "
			phrase[index] = phrase[index]
		elsif phrase[index] == "z"
			phrase[index] = "a"
		else
			phrase[index] = phrase[index].next
		end
		index += 1
	end
	p phrase
end

# define method to decrypt
# push each letter one backward
def decrypt(phrase)
	index = 0
	alpha = "abcdefghijklmnopqrstuvwxyz"
	while index < phrase.length
		if phrase[index] == " "
			phrase[index] = phrase[index]
		else
			prev = alpha.index(phrase[index]) - 1
			phrase[index] = alpha[prev]
		end
		index += 1
	end
	p phrase
end

## DRIVER CODE

# add an interface
ans = nil
while ans != "e" || ans != "d"
	puts "Do you want to encrypt or decrypt?"
	ans = gets.chomp
	if ans[0] == "e"
		puts "What is your password to be encrypted?"
		phrase1 = gets.chomp
		encrypt(phrase1)
		break
	elsif ans[0] == "d"
		puts "What is your password to be decrypted?"
		phrase2 = gets.chomp
		decrypt(phrase2)
		break
	else
		puts "I don't understand, tell me again."
	end
end

# puts "Test:"
# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# encrypt(decrypt("swordfish"))
# # this works because the local return values
# # are printed as strings, and therefore are
# # interpreted correctly by each method