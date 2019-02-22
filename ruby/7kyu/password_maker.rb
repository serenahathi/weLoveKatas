def make_password(phrase)
  new_password = []
  phrase.split.map {|word| new_password.push(word[0])}
  character_substitutions(new_password.join)
end

def character_substitutions(phrase)
  phrase.gsub(/i/i, '1').gsub(/o/i, '0').gsub(/s/i, '5')
end
