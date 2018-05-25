#Mi primer programa en Ruby

puts "Hola mundo"
print "Aimer Rivera"
print "Centeno"
puts "Ejemplo Interpolacion"
puts "La suma de 2 + 3 es #{2+3}"
name = "Aimer Rivera"
puts "Mi nombre es #{name}"
#puts "Ciudad de origen:"
#ciudad = gets.chomp
#puts "Ciudad ingresada #{ciudad}"
#if ciudad == "Aguachica"
#  puts "#{ciudad} es la mejor ciudad del mundo..."
#end

puts "Ciclo While"
i=0
while i < 10
  i = i+1
  puts "Iteracion #{i}"
end

puts "Ciclo do"
i=0
num = 20
num.times do
  i = i+1
  puts "Iteracion #{i}"
end

puts "Ciclo DO "
num = 20
num.times do |i|
  i = i+1
  puts "Iteracion #{i}"
end

puts "Ciclo por rangos"
(1..10).each do |i|
  puts "Iteracion #{i}"
end
puts "Vectores"
vector = [1,10,"Aimer", "Rivera", "Centeno"]
vector.each do |item|
  puts item
end
vector.each_with_index do |item,index|
  puts "#{item}, #{index}"
end

puts "Agregar items al vector"
vector << "Salvatore"
vector.push("Alejandra")
vector.push("Camila")

vector.each_with_index do |item,index|
  puts "#{item}, #{index}"
end

puts "Hash"
lista = [
 {
  nombre: "Aimer",
  apellidos: "Rivera Centeno",
  profesion: "Ingeniero de sistemas",
  estudios: ["bachiller","pre-grado", "post-grado"]
},
 {
   nombre: "Maira",
   apellidos: "Escobar Mendoza",
   profesion: "Ingeniero de sistemas",
   estudios: ["bachiller","pre-grado"]
 }
]

lista.each do |persona|
  puts "Nombre #{persona[:nombre]}"
  puts "Apellidos #{persona[:apellidos]}"
  puts "Profesion #{persona[:profesion]}"
  puts "Estudios #{persona[:estudios].join(",")}"

end
