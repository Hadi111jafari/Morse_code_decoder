$morse_dict = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z',
    ' ' => ' '
  }
  
  def decode_char(char)
    $morse_dict[char]
  end
  puts decode_char '.-'
  
  def decode_word(word)
    decoded_morse = ''
    word.split(/ /).each { |letter| decoded_morse += decode_char(letter) }
    return decoded_morse
  end
  puts decode_word '-- -.--'
  
  def decode(sentence)
    decoded_morse = ''
    sentence.split(/   /).each { |word| decoded_morse += "#{decode_word(word)} " }
    return decoded_morse
  end
  puts decode '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
  