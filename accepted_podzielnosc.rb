t = Integer(gets.chomp)
t.times {
    liczby = gets.chomp.split(" ")
    n = liczby[0].to_i
    x = liczby[1].to_i
    y = liczby[2].to_i
    for i in 1...n
        if i % x == 0 && i % y != 0
            print "#{i} "
        end
    end
    print "\n"
}

$stdin.gets