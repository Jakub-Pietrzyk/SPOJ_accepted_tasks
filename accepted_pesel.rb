t = Integer(gets.chomp)
t.times {
    pesel = gets.chomp

prawda = true
if pesel.length != 11
    prawda = false
end
suma = 0
for i in 0..10
    if i==0 || i==4 || i==8 || i ==10
        suma+=pesel[i].to_i
    elsif i==1 || i==5 || i==9
        suma+=pesel[i].to_i*3
    elsif i==2 || i==6
        suma+=pesel[i].to_i*7
    else
        suma += pesel[i].to_i*9
    end
end
if suma%10 != 0
    prawda = false
end
if prawda
    puts "D"
else
    puts "N"
end
}
$stdin.gets