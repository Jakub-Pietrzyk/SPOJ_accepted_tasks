def wynik(n,k)
    if n==0 || k== 0
        return 1
    end
    wynik = 1
    i = 1
    loop do
        break if i > k
    
        wynik = wynik * (n-i+1)/i
        i += 1
    end
    return wynik
end

t = Integer(gets.chomp)
t.times {
    podane = gets.chomp
    podane = podane.split(" ")
    n = podane[0].to_i
    k = podane[1].to_i
    if n-k < k
        k = n-k
    end
    puts wynik(n,k)
}

$stdin.gets