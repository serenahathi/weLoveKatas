# Move the first letter of each word to the end of it, then add "ay" to the end of the word.
# Leave punctuation marks untouched.

# Solution 1

def pig_it(text)
  seperator =  ' '
  array = text.split(seperator)
  result = array.map { |word|  contains_punctuation_mark?(word) ? word : pig_latin_transformation(word) }.join(" ")
end

def pig_latin_transformation(word)
  suffix = 'ay'
  word[1...-1] + word[0] + suffix
end

def contains_punctuation_mark?(word)
  word.match?(/[[:punct:]]/)
end

# Solution 2

def pig_it_two(word)
  word.gsub(/(\w)(\w*)/, '\2\1ay')
end


puts pig_it('Pig latin is cool')
# igPay atinlay siay oolcay

puts pig_it("O tempora o mores !")
# Oay emporatay oay oresmay !

puts pig_it('Quis custodiet ipsos custodes ?')
# uisQay ustodietcay psosiay ustodescay ?
