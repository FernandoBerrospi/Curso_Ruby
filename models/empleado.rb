require '../models/model'
class Empleado < Model
    def initialize
        super
        @table = 'empleados'
        @primary_key = 'empleado_id'
        @fillable = %w[empleado_id nombres apellidos direccion cargo_id]
    end
end

empleado_model = Empleado.new
# CREAR REGISTRO
=begin
empleado_model.create({
        empleado_id: 1,
        nombres: 'fff',
        apellidos:'Berrospi',
        direccion: 'Eguren 776',
        cargo_id: '2'
            })
=end

# MOSTRAR TODOS LOS REGISTROS
# puts(empleado_model.all)

# BUSCAR UN REGISTRO
# puts(empleado_model.find 3)

# EDITAR UN REGISTRO
id = 6
puts(empleado_model.find id)
empleado_model.update(id,{
        nombres: "Alexis Marvin",
        apellidos: "Meregildo Leiva",
        direccion: "Tupac Amaru",
        cargo_id: "3"
})
puts(empleado_model.find id)

# ELIMINAR UN REGISTRO
=begin
empleado_model.delete 5
puts(empleado_model.all)
=end
