B= 5.times.map{Random.rand(1..15) }
I= 5.times.map{Random.rand(16..30) }
N= 5.times.map{Random.rand(31..45) }
G= 5.times.map{Random.rand(46..60) }
O= 5.times.map{Random.rand(61..75) }
N[2] =""
puts"  B |  I |  N |  G |  O "
(1..5).each do |i|
  puts "  #{B[i-1]} | #{I[i-1]} | #{N[i-1]} | #{G[i-1]} |  #{O[i-1]} " 
end