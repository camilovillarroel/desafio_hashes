# 1) Sintaxis básica
# Dado el siguiente hash:
# h = { :claveuno => 10, :clavedos => 20, :clavetres => 30 }
# Modificar el hash para utilizar la sintaxis de Ruby 2.0+
h = { claveuno: 10, clavedos: 20, clavetres: 30 }

# 2) Corrección de errores
# 2.1. Se tiene el siguiente hash:
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche'=> 750}
#y se realiza la siguiente consulta para conocer los productos existentes:
productos.each { |producto, valor| puts producto }
#Corrige el error para mostrar la información solicitada.

# 2.2. Se quiere agregar un nuevo producto al hash:
productos['cereal'] = 2200
# Corrige la instrucción para agregar el producto.
# 2.3. Se quiere actualizar el precio de la bebida:
productos['bebida'] = 2000
# Corrige la instrucción para actualizar el valor del producto existente.
# 2.4. Convertir el hash en un array y guardarlo en una nueva variable.
array_produtos = productos.map {|producto,valor| [producto,valor]}
# 2.5. Eliminar el producto 'galletas' del hash.
productos.delete('galletas')

# 3) Operaciones básicas
# Dado el hash:
h = {"x": 1, "y":2}

# Agregar el string z con el valor 3.

h['z']=3
# Cambiar el valor de x por 5.
h['x']=5
# Eliminar la clave y.
h.delete('y')
# Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
puts 'yeeah' if h.has_key?('z')
# Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
h.invert

# 4) Array y Hashes
# Se tienen dos arrays uno con el nombre de personas y otro con las edades, se pide generar un hash
# con el nombre y edad de cada persona (se asume que no existen dos personas con el mismo
# nombre)
personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
# 4.1. Se pide generar un hash con la información:
# personas_hash = {"Carolina": 32, "Alejandro":28, "María Jesús":41, "Valentín":19}
personas_hash= {}
personas.each_with_index do |persona,index|
    personas_hash[persona]=edades[index]
end
puts personas_hash

# 4.2. Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como
# argumento

def prom(hash)
    cont = 0
    hash.each do |persona, edad|
        cont = cont + edad.to_i
    end
    puts cont/(hash.count)
end
prom(personas_hash)


# 5) Array y Hashes
# Dados los siguientes array:
meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
# 5.1. Generar un hash que contenga los meses como llave y las ventas como valor:
#h = {'Enero': 2000, 'Febrero': 3000 ... }
hashms = {}
meses.each_with_index do |mes,index|
    hashms[mes]=ventas[index]
end
puts hashms

# 5.2. En base al hash generado:
# 5.2.1. Invertir las llaves y los valores del hash.

hashinv = hashms.invert
# 5.2.2. Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)

puts hashinv[hashinv.keys.max]

# 6) Operaciones típicas sobre un hash
# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de
# este.
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# 1. Obtener el plato mas caro.
puts restaurant_menu.key(restaurant_menu.values.max)

# 2. Obtener el plato mas barato.
puts restaurant_menu.key(restaurant_menu.values.min)

# 3. Sacar el promedio del valor de los platos.
puts (restaurant_menu.values.sum)/(restaurant_menu.count)

# 4. Crear un arreglo con solo los nombres de los platos.
puts restaurant_menu.keys

# 5. Crear un arreglo con solo los valores de los platos.
puts restaurant_menu.values


# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
restaurant_menu.each do |plato, valor|
    restaurant_menu[plato]= valor * 1.19
end
puts restaurant_menu
# 7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
restaurant_menu.each do |plato, valor|
    if plato.split(' ').count > 1
        restaurant_menu[plato]= valor * 0.8
    end    
end
puts restaurant_menu