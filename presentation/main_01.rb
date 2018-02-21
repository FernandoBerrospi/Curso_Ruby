# Manejo de Variables -----------------------------------------------------------------------------
=begin
nombres = "Luis Fernando"
apellidos = "Berrospi Gamboa"
edad = 20
puts(nombres + " " + apellidos)
puts("Mi edad es: " + edad.to_s)
=end

# Manejo de numeros -----------------------------------------------------------------------------
=begin
respuesta = (10.0/3.0)
puts(respuesta)
=end

# Manejo de cadenas -----------------------------------------------------------------------------
# nombres = "Luis Fernando"
# apellidos = "Berrospi Gambóa"
# nombre_completo = apellidos + " " + nombres
# puts("Hola mi nombres es: #{nombre_completo}")

# Entrada y salida de caractares -----------------------------------------------------------------------------
# print("Hola dime tu nombre: ")
# nombre = gets().chomp() # Cadena - ultima letra
# puts("Hola #{nombre}")
# puts("Tu nombre tiene: #{nombre.length} letras")

# Operadores aritmeticos -----------------------------------------------------------------------------
# print("Digita un numero: ")
# numero = gets().to_i()
# if numero % 2 == 0
#    puts("Es un numero par")
# else
#    puts("No es un numero par")
# end
# puts("La potencia de 3 es: #{numero ** 3}")

# Operadores en Ruby -----------------------------------------------------------------------------
#
# numero_1 = 20
# numero_2 = 40
# numero_3 = numero_1
#
# puts(numero_1 <=> numero_2)
# puts(numero_2 <=> numero_1)
# puts(numero_1 <=> numero_1)
# puts("---------------------------------------------")
# puts(numero_1.eql?(numero_1.to_f()))
# puts(numero_1.eql?(numero_1))
# puts("---------------------------------------------")
# puts(numero_1.equal?(numero_1.to_f()))
# puts(numero_1.equal?(numero_1))

# Condicionales -----------------------------------------------------------------------------
# exists = false
# unless exists
#    puts("No existe nada")
# end
#
# nombre = if exists
#             "Aceptado"
#          else
#             "No aceptado"
#          end
#
# nombre_ternario = exists ? "Aceptado con ternadio" : "No aceptado con ternacio"
#
# puts("Sin ternario: ", nombre)
# puts("Con ternario: ",nombre_ternario)

# Case -----------------------------------------------------------------------------
# print("Dime la seccion a la que pertences: ")
# seccion = gets().chomp()
# case seccion
#    when "a"
#       puts("Estas en la mejor seccion")
#    when "b"
#       puts("Estas en una seccion regular")
#    when "c"
#       puts("Estas en una mala seccion")
#    else
#       puts("Estuviste en un error")
# end

# Arreglos -----------------------------------------------------------------------------
#
# arreglo = Array.new(5)
# arreglo[0] = "perro"
# arreglo[1] = "gato"
# arreglo[6] = true
# arreglo << 10
#
# puts(arreglo)
#
# calificaciones = %w[10 15 14 13 10 09]
# promedio = 0
# calificaciones.each_with_index do |item,index|
#    promedio += item.to_f()
#    puts("En la posicion " + index.to_s() + " tenemos " + item.to_s())
# end
# # Vamos a restar un punto a las calificaciones sin modificar el arreglo
# calificacion_modificadas = calificaciones.map do |item|
#    item.to_f - 1
# end
# puts(calificacion_modificadas)
# # Vamos a restar un punto a cada calificacion modificando el arreglo
# calificaciones.map!{ |item| item.to_f - 1 }
# puts(calificaciones)
#
# promedio = promedio.to_f / calificaciones.length
# puts("Con un promedio de: " + promedio.to_s())

# Operaciones con arreglos -----------------------------------------------------------------------------
# calificaciones = %w[10 15 14 13 10 09].map!{|item| item.to_i()}

# puts("Multiplica")
# puts(calificaciones*2) # Multiplica el arreglo
# puts("Join y Split")
# puts(calificaciones*'-') # Join el arreglo
# puts("Join y Split")
# puts(calificaciones.join(",")) # Join el arreglo
# puts("Join y Split")
# puts(calificaciones.join(",").split(",")) # Join y Split el arreglo
# puts("Ordenar el Arreglo")
# puts(calificaciones.sort()) # Orden el arreglo
# puts("Orden Invertido")
# puts(calificaciones.sort().reverse()) # Orden el arreglo
# puts("Encontrar en el arreglo")
# puts(calificaciones.include?(9))
# puts("Solo los unicos")
# puts(calificaciones.uniq)
# puts("Uno de los elementos aleatoriamente")
# puts(calificaciones.sample)
#
# Rangos -----------------------------------------------------------------------------
#
# numeros = (1..20)
# numeros.each{ |item| puts(item)}
# numeros = (1..20).step(2)
# numeros.each{ |item| puts(item)}
# puts("El minimo es: #{numeros.min()}")
#
# numeros.to_a().reverse().each{ |item| print(item.to_s() + "  ")}
#
# While and Until -----------------------------------------------------------------------------
#
# i = 1
# while i <= 10
#    puts(i)
#    i+= 1
# end

# songs = ["Welcome to the jungle", "Sweet child o mine","Estranged","Dont Cry"]
# playing = true
# track = 0
# while playing
#    puts("Reproduciendo " + songs[track])
#    track+= 1
#    playing = false if track == songs.length
# end
#
# numero_magico = 20
# acierto = false
# until acierto
#    print("Digita tu numero: ")
#    acierto = true if gets().to_i() == numero_magico
# end
#
# Time Upto Dowto -----------------------------------------------------------------------------
#
# 10.times{|index| print(index.to_s + " - ")}
# print("\n")
# 10.upto(30){|index| print(index.to_s + " - ")}
# print("\n")
# 20.downto(0){|index| print(index.to_s + " - ")}
# print("\n")
#
# Matrices -----------------------------------------------------------------------------
#
# require 'matrix'
# matriz = Matrix[[1,2,3],[4,5,6],[7,8,9]]
# matriz.each(:diagonal){|item| print(item.to_s + " - ")}
# print("\n")
# matriz.each(:strict_upper){|item| print(item.to_s + " - ")}
# print("\n")
# matriz.each(:strict_lower){|item| print(item.to_s + " - ")}
# print("\n")
#
# Hashes -----------------------------------------------------------------------------
# Son como los diccionarios, arrays asociativos, etc
# fernando = {
#   :nombres => "Luis Fernando",
#   :apelldios => "Berrospi Gamboa",
#   :edad => 20,
#   :nacimiento => 1997
# }
# fernando.each do |index,item|
#    puts(index.to_s + " - "  + item.to_s)
# end
#
# puts("El tamaños es: #{fernando.length}")
# clave = :nombres
# puts("Tiene la Clave #{clave.to_s}: " + fernando.has_key?(clave).to_s)
# puts("Conjunto de Claves: #{fernando.keys()}")
# puts("Conjunto de Valores: #{fernando.values()}")
# key_eliminar = :nacimiento
# puts("Eliminar #{key_eliminar.to_s}: #{fernando.delete(key_eliminar)}")
# puts("Conjunto de Valores: #{fernando.values()}")
#
# Simbolos -----------------------------------------------------------------------------
# Son objetos inmutables
# simbolo_1 = :fernando
# simbolo_2 = :fernando
# puts(simbolo_1 == simbolo_2)
#
# Metodos y Argumentos ----------------------------------------------------------------
# Funciones y esas cosas
# def promedio(lista)
#    unless lista.is_a? Array
#       lista = lista.to_a
#    end
#    sumatoria = 0
#    lista.each {|item| sumatoria+= item}
#    return sumatoria / lista.length
# end
# notas = (1 .. 10).to_a
# puts("El promedio es #{promedio(notas)}")
#
# Operador Splat ----------------------------------------------------------------------
# def saludar(*objetos)
#    objetos.each {|item| puts("Hola: " + item.to_s())}
# end
# objetos = ["Fernando","Alonso","Ale"]
# saludar *objetos
#
# Keywords
# def saluda_persona(nombre:"" , edad:0)
#    if edad < 3
#       puts("Hola #{nombre}")
#    else
#       puts("Buenas #{nombre}")
#    end
# end
# saluda_persona(nombre:"Fernando",edad:32)
#
# Clases y Objetos --------------------------------------------------------------
# @ es como un private
# attr_accessor le hace public
class Persona
   attr_accessor :nombres, :apellidos
   attr_reader :id # Solo se lee
   attr_writer :años # Solo se escribe
   def initialize nombres,apellidos
      @nombres =nombres
      @apellidos = apellidos
      @año_nacimiento = 1990

      @id = @nombres.downcase() + @apellidos.capitalize()
   end
   def presentarme
      return "Hola mi nombre es #{@nombres}, #{@apellidos}"
   end

end

class Alumno < Persona
   attr_accessor :seccion, :año
   def initialize nombres,apellidos,seccion,año
      # Definir las variables de instacia en el contructor
      super(nombres,apellidos)
      @seccion = seccion
      @año = año
   end

   public
   def presentarme
      aumentar_año
      return "Hola mi nombre es #{@nombres}, #{@apellidos} y mi aula es #{@seccion} y mi año es #{@año}"
   end

   private
   def aumentar_año
      @año+= 1
   end

   @@max_nota = 20
   @@min_nota = 0
   class << self
      def max_nota
         puts("La maxima nota es: #{@@max_nota}")
      end
   end

   def self.min_nota
      puts("La minima nota es: #{@@min_nota}")
   end
end
# Un metodo protegido solo se puede llamar desde una clase que sea del mismo tipo
persona = Alumno.new("Fernando","Berrospi","A",3)
puts(persona.presentarme())
puts("Mi id es: " + persona.id)
Alumno.max_nota
Alumno.min_nota
#
# Bloques ---------------------------------------------------------------------
# Metodos que reciben bloques
# def saludar parametro:""
#    puts(parametro)
#    yield("Fernando") if block_given?  # Si el metodo recibio un bloque
# end
# saludar(parametro:"parametro") {|nombre| puts("Hola: #{nombre}")}
#
# Bloques 2 ------------------------------------------------------------------
# El bloque recibe el contexto en el que se ejecuta
# class Usuario
#    attr_accessor :nombre
#    def initialize nombre
#       @nombre = nombre
#    end
#    def saludar
#       yield(@nombre)
#    end
# end
# usuario = Usuario.new("Fenando")
# usuario.saludar {|nombre| puts("Hola #{nombre} como estas")}
#
# Proc ---------------------------------------------------------------------
# Un bloque se define como un Proc
# def hola proc1,proc2
#    proc1.call
#    proc2.call
# end
# proc1 = Proc.new {puts("Proc 1")}
# proc2 = Proc.new {puts("Proc 1")}
# hola(proc1,proc2)
# Lamba ----------------------------------------------------------------------
# Son como funciones anonimas
# Un proc se comporta como un bloque y una lambda se comporta como un metodo
# lambda = lambda{puts("Hola mundo")}
# lambda = ->(nombre) {puts("Hola mundo #{nombre}")}
# lambda.call("Fernanado")