@items = {
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
  '--..' => 'Z'
}

def get_letter(letter)
  @character_letter = @items[letter]
  @character_letter
end

def decode_char(word)
  @letters = word.split
  @letters_word = ''
  @letters.each do |letter|
    get_letter(letter)
    @letters_word += get_letter(letter)
  end
  print "#{@letters_word} "
end

def decode_word(sentence)
  @message = sentence.split('   ')
  @message.each do |word|
    decode_char(word)
  end
end

decode_word('-- -.--   -. .- -- .')
decode_word('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
