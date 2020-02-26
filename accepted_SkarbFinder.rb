to_i = Proc.new do |x|
    x.to_i
end

t = Integer(gets.chomp)
t.times do
    x = 0
    y = 0
    n = Integer(gets.chomp)
    n.times do
        linia = gets.chomp
        wspolrzedne = linia.split(" ").map(&to_i)
        if wspolrzedne[0] == 0
            y += wspolrzedne[1]
        elsif wspolrzedne[0] == 1
            y -= wspolrzedne[1]
        elsif wspolrzedne[0] == 2
            x -= wspolrzedne[1]
        else
            x += wspolrzedne[1]
        end
    end
    if ((x == 0)&&(y == 0))
        puts 'studnia'
    elsif ((x == 0)&&(y > 0))
        puts "0 #{y}"
    elsif ((x == 0)&&(y < 0))
        y *= -1
        puts "1 #{y}"
    elsif ((x > 0)&&(y == 0))
        puts "3 #{x}"
    elsif ((x < 0)&&(y == 0))
        x *= -1
        puts "2 #{x}"
    elsif ((x > 0)&&(y > 0))
        puts "0 #{y}"
        puts "3 #{x}"
    elsif ((x > 0)&&(y < 0))
        y *= -1
        puts "1 #{y}"
        puts "3 #{x}"
    elsif ((x < 0)&&(y > 0))
        x *= -1
        puts "0 #{y}"
        puts "2 #{x}"
    elsif ((x < 0)&&(y < 0))
        y *= -1
        puts "1 #{y}"
        x *= -1
        puts "2 #{x}"  
    end
end

$stdin.gets