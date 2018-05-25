#def hola(name)
#  puts "Hola #{name}"
#end

#hola("Aimer Rivera")
#hola "Maira Escobar"

def guardar(contactos)
  File.open("contactos.csv", "w") do |file|
    contactos.each do |contacto|
      linea = "#{contacto[:id]},#{contacto[:nombre]},#{contacto[:telefono]}\n"
      file.write(linea)
    end
  end

end

def cargar(filename)
  contenido = File.readlines(filename)
  contenido.each do |linea|
    puts linea
  end
end

def load_file(filename)
  lineas = File.readlines(filename)
  contacto = {}
  contactos = []
  lineas.each do |linea|
    campos = linea.split(",")
    puts "Campos.. #{campos[0]},#{campos[1]},#{campos[2]}"
    #creando Hash
    contacto["id"] = campos[0]
    contacto["nombre"] = campos[1]
    contacto["telefono"] = campos[2]
    contactos.push(contacto)
  end
  # recorriendo el vector de contactos
  contactos.each do |contacto|
    puts "id: #{contacto["id"]}, nombre: #{contacto["nombre"]}, telefono #{contacto["telefono"]}"
  end

end

contactos = [
  {id: "13544953", nombre: "Aimer Rivera", telefono: "3173738309"},
  {id: "40938190", nombre: "Maira Escobar", telefono: "3168702989"}
]

guardar(contactos)
cargar("contactos.csv")
load_file("contactos.csv")
