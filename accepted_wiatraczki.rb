
def tworzenie(ile,skretnosc)
    podstawa = [['*','*'],['*','*']]
    if ile == 0
        return podstawa
    elsif skretnosc ==true

        tab = []
        for i in 0...ile+2
            tab[i] = []
        end
        tab[0][0] = '*'
        tab[0][ile+1] = '*'
        tab[ile+1][0] = '*'
        tab[ile+1][ile+1] = '*'
        1.upto(ile/2) do |x|
            tab[x][0] = '*'
        end
        ile/2+1.upto(ile) do |x|
            if tab[x][0] != '*'
                tab[x][0] = '.'
            end
        end
        1.upto(ile/2) do |x|
                tab[x][ile+1] = '.'
        end
        ile/2+1.upto(ile) do |x|
            if tab[x][ile+1] != '.'
                tab[x][ile+1] = '*'
            end
        end

        
        1.upto(ile/2) do |x|
            tab[0][x] = '.'
        end
        ile/2+1.upto(ile) do |x|
            if tab[0][x] != '.'
                tab[0][x] = '*'
            end
        end
        1.upto(ile/2) do |x|
            tab[ile+1][x] = '*'
        end
        ile/2+1.upto(ile) do |x|
            if tab[ile+1][x] != '*'
                tab[ile+1][x] = '.'
            end
        end
        mniejsza = tworzenie(ile-2,skretnosc)
      
        for j in 0...ile
            for i in 0...ile
                tab[j+1][i+1] = mniejsza[j][i]
            end
        end
  
        return tab

    elsif skretnosc == false

        tab = []
        for i in 0...ile+2
            tab[i] = []
        end
        tab[0][0] = '*'
        tab[0][ile+1] = '*'
        tab[ile+1][0] = '*'
        tab[ile+1][ile+1] = '*'
        1.upto(ile/2) do |x|
            tab[x][0] = '.'
        end
        ile/2+1.upto(ile) do |x|
            if tab[x][0] != '.'
                tab[x][0] = '*'
            end
        end
        1.upto(ile/2) do |x|
                tab[x][ile+1] = '*'
        end
        ile/2+1.upto(ile) do |x|
            if tab[x][ile+1] != '*'
                tab[x][ile+1] = '.'
            end
        end

        
        1.upto(ile/2) do |x|
            tab[0][x] = '*'
        end
        ile/2+1.upto(ile) do |x|
            if tab[0][x] != '*'
                tab[0][x] = '.'
            end
        end
        1.upto(ile/2) do |x|
            tab[ile+1][x] = '.'
        end
        ile/2+1.upto(ile) do |x|
            if tab[ile+1][x] != '.'
                tab[ile+1][x] = '*'
            end
        end
        mniejsza = tworzenie(ile-2,skretnosc)
      
        for j in 0...ile
            for i in 0...ile
                tab[j+1][i+1] = mniejsza[j][i]
            end
        end
  
        return tab


    end
end

loop do
    r = Integer(gets.chomp)
    break if r==0
    skretnosc = nil
    if r > 0
        skretnosc = true #lewo
    else
        skretnosc = false #prawo jak zegar
    end
    r = r.abs*2-2
    wynik = tworzenie(r,skretnosc)
    wynik.each do |x|
        x.each do |y|
            print y
        end
        print "\n"
    end
    print "\n"
end







$stdin.gets