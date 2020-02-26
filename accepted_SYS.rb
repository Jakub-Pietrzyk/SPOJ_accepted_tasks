def szesnastkowa(x)
    reszty = []
    while x != 0
        if x % 16 < 10
        reszty << x % 16
        elsif x % 16 ==10
            reszty << "A"
        elsif x % 16 ==11
            reszty << "B"
        elsif x % 16 ==12
            reszty << "C"
        elsif x % 16 ==13
            reszty << "D"
        elsif x % 16 ==14
            reszty << "E"
        elsif x % 16 ==15
            reszty << "F"
        end
        x = x/16
        x = x.floor
    end
    reszty.reverse!
end

def jedenastkowa(x)
    reszty = []
    while x != 0
        if x % 11 <10
            reszty << x % 11
        else
            reszty << "A"
        end
        x = x/11
        x = x.floor
    end
    reszty.reverse!
end

t = Integer(gets.chomp)
t.times do
    liczba = Integer(gets.chomp)
    szest = szesnastkowa(liczba)
    szest.each do |x|
        print x
    end
    print " "
    jede = jedenastkowa(liczba)
    jede.each do |x|
        print x
    end
    print "\n"
end

$stdin.gets