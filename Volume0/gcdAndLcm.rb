def gcd(a, b)
  a, b = b, a % b while b > 0
  a
end

while c = gets do
  a, b = c.split(' ').map(&:to_i)
  g = gcd(a, b)
  lcd = a*b / g
  printf("%d %d\n", g, lcd)
end