def funkcja(s,licznik)
    if s==1
        return licznik
    else
        if s%2==0
            licznik += 1
            return funkcja(s/2,licznik)
        else
            licznik += 1
            return funkcja(3*s+1,licznik)
        end
    end
end

t = Integer(gets.chomp)
t.times do
licznik = 0
s = Integer(gets.chomp)
puts funkcja(s,licznik)
end

$stdin.gets