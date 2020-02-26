to_f = Proc.new do |x|
    x.to_f
end

while liczby = gets.chomp
    x = liczby.split(" ").map!(&to_f)
    delta = x[1]*x[1] - 4 * x[0] * x[2]
    if delta > 0
        puts '2'
    elsif delta == 0
        puts '1'
    else
        puts '0'
    end
end