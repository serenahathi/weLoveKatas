def bouncing_ball(initial, proportion)
  counter = 0
  until initial <= 1 do
    initial = initial * proportion
    counter += 1
  end
  counter
end

bouncing_ball(2, 0.5) # 1
bouncing_ball(100, 0.1) # 2
bouncing_ball(30, 0.3) # 3
