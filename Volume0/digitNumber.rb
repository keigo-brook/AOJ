loop do
  l = gets
  break if l.nil?
  a, b = l.split(' ').map(&:to_i)
  n = a + b 
  ans = 0
  while n > 9
    n /= 10
    ans += 1
  end

  puts ans+1


end