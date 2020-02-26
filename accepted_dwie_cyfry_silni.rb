d = Integer(gets.chomp)
for i in 0...d
    n = Integer(gets.chomp)
    if n <= 1
        puts 0.to_s + " " + 1.to_s
    elsif n >= 10
        puts 0.to_s + " " + 0.to_s
    else
        silnia = 1
        for a in 1..n
            silnia = silnia*a
        end
        druga = (silnia/10)%10
        pierwsza = silnia%10
        puts druga.to_s + " " + pierwsza.to_s
    end
end

$stdin.gets