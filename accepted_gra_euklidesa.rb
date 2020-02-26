t = Integer(gets.chomp)
t.times {
    x = gets.chomp
    x = x.split(" ")
    a = x[0].to_i
    b = x[1].to_i
    loop do
        if a > b
            a = a-b
        elsif a < b
            b = b-a
        else
            break
        end
    end
    puts a+b
}


$stdin.gets