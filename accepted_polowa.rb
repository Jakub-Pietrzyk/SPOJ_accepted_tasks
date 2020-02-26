t = Integer(gets.chomp)
t.times do
    ciag = gets.chomp
    x = ciag.length
    #if x%2!=0
    #    print 'Musi byc parzysta ilosc znakow'
    #else
        x = x/2
        for a in 0...x
            print ciag[a]
        end
    #end
    print "\n"
end

$stdin.gets