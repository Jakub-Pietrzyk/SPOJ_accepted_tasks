#będę tworzył tablice wyników małych potęg
wzor = [[],[],[],[],[],[],[],[],[]]
ramka = [[],[],[],[],[],[],[],[],[]]

def potega(a,b)
    wynik = 1
    b.times{wynik *=a}
    return wynik
end

a = 1
b = 1
wzor.each do |x|
    e = 0
    4.times do
        x[e]=potega(a,b)
        e +=1
        b +=1
    end
    a +=1
    b = 1
end

i = 0
ramka.each do |x|
    j = 0
    4.times do
        x[j] = wzor[i][j]%10
        j +=1
    end
    i += 1
end
#stworzyłem tą tablicę

d = gets.chomp
d.to_i.times do
    m,n = gets.split.map(&:to_i) #wczytuje dwie zmienne po spacji jako int
    m = m%10
    n = n%4
    if m!=0 && n==0
        puts ramka[m-1][3]
    elsif m==0
        puts 0
    else
        puts ramka[m-1][n-1]
    end
end

$stdin.gets