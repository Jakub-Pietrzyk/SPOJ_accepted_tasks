n = Integer(gets.chomp)
for i in 0...n
    x = Integer(gets.chomp)

    pierwsza = true

    if x < 2
        pierwsza = false
    elsif x == 2
    else
        y = 2
        loop do
            break if y*y > x
            if x % y == 0
                pierwsza = false
            end
            y+=1
        end
    end

    if pierwsza == true
        puts 'TAK'
    else
        puts 'NIE'
    end
end

$stdin.gets