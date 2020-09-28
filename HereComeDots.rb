numbers = 
          [
            256, 21, 89, 217, 1024, 2745, 128, 233, 1024, 256, 1001, 
            8192, 987, 4096, 16384, 513, 132, 513, 610, 512, 2048, 344, 233, 
            89, 55, 513, 610, 256, 344, 4096, 2745, 144, 32, 34, 8192, 610, 
            89, 217, 742900, 1729, 21, 1332, 16384, 256, 16384, 16384, 513, 
            4096, 1001, 42, 126, 1024, 8192, 34, 32, 2745, 4096, 89, 16384, 
            512, 730, 1024, 987, 344, 55, 13, 4096, 2198, 42, 1332, 512, 32, 
            1332, 128, 8192, 2048, 344, 14, 2198, 987, 16384, 610, 2048, 344, 
            610, 126, 256, 512, 610, 128, 1001, 256, 512, 34, 21, 64, 377, 126, 
            233, 4096, 16384, 8192, 344, 21, 89, 8192, 126, 8192, 2048, 144, 217,
            55, 128, 610, 34, 256, 126, 233, 2048, 89, 4096, 126, 987, 256, 610, 512, 
            730, 233, 13, 987, 1001, 1024, 126, 1024, 8192, 34, 34, 55, 217, 377, 34, 
            144, 55, 144, 2745, 512, 13, 610, 21, 34, 2198, 89, 610, 64, 64, 64, 1729, 
            89, 1024, 13, 34, 8192, 89
            ]

def fibonacci(number) 
  num1 = 0
  num2 = 1
  sum = 0
  return true if (number == num1) || (number == num2)

  while number > sum
    sum = num1 + num2
    num1 = num2
    num2 = sum
  end
  return true if number == sum

  false
end

def power_of_two?(number)
  power = 0
  i = 0
  while number > power
    power = 2**i
    i += 1
  end
  return true if number == power

  false
end

ans1 = "-"
ans2 = "."
space = " "
numbers.each do |num|
  if fibonacci(num)
    print ans1
  elsif power_of_two?(num)
    print ans2
  else 
    print space
  end
end

numbers.each do |num|
  if fibonacci(num)
    print ans2
  elsif power_of_two?(num)
    print ans1
  else 
    print space
  end
end


