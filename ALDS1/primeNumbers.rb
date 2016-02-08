def is_prime?(n)
  return false if n == 1
  return true if n == 2

  (2..Math.sqrt(n)).each do |v|
    return false if n % v == 0
  end
  return true
end

n = gets.to_i
ans = 0
n.times do
  ans += 1 if is_prime?(gets.to_i)
end
puts ans