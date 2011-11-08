def printM(v, l, c)
  (0 ... l).each do |i|
    (0 ... c).each do |j|
        print v[i*c + j], ' '
    end
    puts ''
  end
end

l = 3
c = 10

v = (0 .. (l*c) - 1).to_a
printM(v, l, c)
print
(0 ... l).each do |i|
  (0 ... c).each do |j|
    i2 = i
    j2 = j
    begin 
      k = j2 * l + i2
      j2 = k % c
      i2 = k / c
    end while !((i2 == i && j2 == j) || (i2 < i) || (i2 == i && j2 < j))
    if (i2 == i && j2 == j)
      aux = v[i2*c + j2]
      begin 
        k = j2 * l + i2
        aux2 = v[k]
        v[k] = aux
        aux = aux2
        j2 = k % c
        i2 = k / c
      end while (i2 != i || j2 != j)
    end
  end
end
puts '-----------------------'
printM(v, c, l)
