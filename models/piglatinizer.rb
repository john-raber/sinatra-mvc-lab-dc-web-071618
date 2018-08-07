class PigLatinizer
  def convert_word(text)
    arr = text.split('')
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

    if vowels.include?(arr.first)
      arr << 'way'
    else
      until vowels.include?(arr.first)
        arr << arr.shift
      end
      arr << 'ay'
    end
    arr.join
  end

  def piglatinize(text)
    arr = text.split(' ')

    arr.map do |word|
      convert_word(word)
    end.join(' ')
  end
end
