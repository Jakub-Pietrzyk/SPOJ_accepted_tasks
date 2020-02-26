to_i = Proc.new do |x|
    x.to_i
end


t = Integer(gets.chomp)
t.times do
    x = gets.chomp
    cyfry = x.split(" ").map!(&to_i)
    wynik = (2*cyfry[0]*cyfry[1])/(cyfry[0] + cyfry[1])
    puts wynik
end

$stdin.gets