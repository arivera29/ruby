def fizz_buzz (numero)
if numero % 3 == 0 && numero % 5 == 0
  puts "fizzbuzz"
elsif numero % 3 == 0
  puts "fizz"
elsif numero % 5 == 0
  puts "buzz"
else
  puts "El numero es #{numero}"
end
end

numero = gets.chomp
fizz_buzz(numero.to_i)
