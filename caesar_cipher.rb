def caesar_cipher(string, shift)
  caesar_string = ""

  string.each_char do |letter|
    ("a".."z").include?(letter.downcase) && shift.times { letter = letter.next }
    caesar_string << letter[-1]
  end

  caesar_string
end

puts caesar_cipher('What a string!', 5)