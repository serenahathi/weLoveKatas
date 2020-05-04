# https://www.codewars.com/kata/5650ab06d11d675371000003

def split_in_parts (s, part_length)
  s.scan(/.{1,#{part_length}}/)
end

split_in_parts("supercalifragilisticexpialidocious", 3)
# "sup erc ali fra gil ist ice xpi ali doc iou s"
