if File.exist?("familia.txt")
  # código si el archivo o la carpeta existe
  puts "Archivo existe"
  content = File.read("familia.txt") # lee el archivo
  lines = content.split("\n") # divide el contenido en líneas
  lines.each do |line|
    puts line
  end
else
  # código si el archivo o la carpeta no existe
  puts "Archivono existe"
end

puts "Leyendo lineas completas"
lineas = File.readlines("familia.txt")
lines.each do |linea|
  puts linea
end

puts "Agregando linea"
File.write("familia.txt","Liz Dayana")

lineas = File.readlines("familia.txt")
lines.each do |linea|
  puts linea
end
