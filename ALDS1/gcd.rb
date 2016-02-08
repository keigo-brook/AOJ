def gcd(a, b)
  if a < b 
    tmp1 = b 
    tmp2 = a 
  elsif a > b
    tmp1 = a 
    tmp2 = b
  else
    return a
  end
  r0 = 1
  while r0 != 0
    r1 = r0
    q0 = tmp1/tmp2
    r0 = tmp1%tmp2
    tmp1 = tmp2
    tmp2 = r0
  end
  return r1
end

a, b = gets.split.map(&:to_i)
puts gcd(a, b)