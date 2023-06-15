# Morse dictionary to decode morse code using a hash
dictionary = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
  '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
  '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
  '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z'
}

# Method to decode a single morse character
def decode_letter(morse_character, dictionary)
  dictionary.each do |key, value|
    return value if morse_character == key
  end
end

# Method to decode an entire Morse code
def decode_word(word, dictionary)
  decoded_word = ''
  word.split.each do |letter|
    decoded_word += decode_letter(letter, dictionary)
  end
  decoded_word
end

# Method to decode an entire Morse sentece
def decode_sentence(sentence, dictionary)
  decoded_sentence = ''
  sentence.split('  ').each do |word|
    decoded_sentence += "#{decode_word(word, dictionary)} "
  end
  decoded_sentence
end

# Test cases
puts decode_letter('.-', dictionary)
puts decode_word('.... . .-.. .-.. ---', dictionary)
puts decode_sentence('.... . .-.. .-.. ---  .-- --- .-. .-.. -..', dictionary)
