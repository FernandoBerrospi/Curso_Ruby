# gem install pg

require "pg"
class Connection
    @@db_config = {
        host: '127.0.0.1',
        dbname: 'MANTENEDOR_MVC',
        port: "5432",
        user: "postgres",
        password: "postgres"
    }

    def self.get_connection
        return PG.connect(@@db_config)
    end
end






# con = Connection.get_connection
#
# con.exec( "SELECT * FROM empleados" ) do |result|
#     result.each do |row|
#         puts(" %7d | %-16s | %s " %row.values_at('empleado_id', 'nombres', 'apellidos'))
#     end
# end
#
# con.exec("INSERT INTO empleados(nombres,apellidos,direccion,cargo_id) VALUES('Prueba','Prueba','Prueba','3')")
#
# con.exec( "SELECT * FROM public.obtener_empleados();" ) do |result|
#     result.each do |row|
#         puts(" %7d | %-16s | %s " %row.values_at('empleado_id', 'nombres', 'apellidos'))
#     end
# end