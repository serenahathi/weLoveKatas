# Given a string and an array of integers representing indices, capitalize all letters at the given indices.
# https://www.codewars.com/kata/59cfc09a86a6fdf6df0000f1/ruby

def capitalize(s,ind)
  ind.each do |index|
    s[index] = s[index].upcase if s[index] != nil
    end
  puts s
end



capitalize("abcdef",[1,2,5])
# ,'aBCdeF'
capitalize("abcdef",[1,2,5,100])
# 'aBCdeF',
capitalize("codewars",[1,3,5,50])
# 'cOdEwArs'
capitalize("abracadabra",[2,6,9,10])
# 'abRacaDabRA'
