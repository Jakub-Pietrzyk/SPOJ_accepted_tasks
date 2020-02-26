
def string_merge(a,b)
    x = a.length
    y = b.length
    slowo = []
    if x > y
        h = 0
        for g in 0...y
            slowo[h] = a[g]
            slowo[h+1] = 'o'
            h += 2
        end
        n = 1
        for v in 0...y
            slowo[n] = b[v]
            n += 2
        end
    else
        h = 0
        for g in 0...x
            slowo[h] = a[g]
            slowo[h+1] = 'o'
            h += 2
        end
        n = 1
        for v in 0...x
            slowo[n] = b[v]
            n += 2
        end
    end
    return slowo
end
t = Integer(gets.chomp)
t.times do
    wejscie = String(gets.chomp)
    wejscia = wejscie.split(" ")
    slowo = string_merge(wejscia[0],wejscia[1])
    slowo.each do |x|
        print x.to_s
    end
    print "\n"
end


$stdin.gets