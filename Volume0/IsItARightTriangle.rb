n = gets.to_i
n.times do
  a = gets.split(' ').map(&:to_i)
  a.sort!
  if a[-1]**2 == a[0]**2 + a[1]**2
    puts "YES"
  else
    puts "NO"
  end
end