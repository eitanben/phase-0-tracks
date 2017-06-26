def encrypt(str)
  #do work to get next letter for each character
  index = 0
  encrypt_password = ""
  while index < str.length
    if str[index] === "z"
      encrypt_password += "a"
    else
      encrypt_password += str[index].next
    end
    index += 1
  end
  p encrypt_password

end

# encrypt("abc")
# encrypt("zed")

def decrypt(str)
  #do work to get previous letter for each character
  index = 0
  decrypt_password = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < str.length
    if str[index] === "a"
      decrypt_password += "z"
    else
      prevIndex = alphabet.index(str[index]) -1
      decrypt_password += alphabet[prevIndex]
    end
    index += 1
  end

  p decrypt_password
end
# decrypt("bcd")
# decrypt("afe")

# nested call:
# decrypt(encrypt("swordfish"))

puts "Would you like to encrypt or decrypt your password?"
encrypt_answer = gets.chomp
puts "Enter a password"
password = gets.chomp
if  encrypt_answer == "encrypt"
    encrypt(password)
elsif encrypt_answer == "decrypt"
    decrypt(password)
else
  puts "please select one: encrypt/decrypt"
end
