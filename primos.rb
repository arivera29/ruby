#Programa que captura un numero e indica si es par o es primo
print "Ingrese un numero -> "
numero = gets.chomp.to_i
if numero % 2 == 0
  puts "Es par"
else
  puts "Es primo"
end
