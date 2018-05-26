print "Ingrese un numero -> "
numero = gets.chomp.to_i
if numero % 2 == 0
  puts "Es par"
else
  puts "Es primo"
end
