def compute
  return block_given? ? yield : 'Do not compute'
end
