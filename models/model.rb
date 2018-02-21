require '../models/connection'

class Model
    def initialize
        @table = nil
        @primary_key = nil
        @fillable = nil
        @cn = Connection.get_connection
    end

    def find id
        sql = "SELECT * FROM #{@table} WHERE #{@primary_key} = #{id}"
        response = []
        @cn.exec( sql ) do |result|
            result.each do |row|
                dictionary = {}
                @fillable.each {|index| dictionary[index.to_sym] = row.values_at(index)}
                response << dictionary
            end
        end
        return response
    end

    def all
        sql = "SELECT * FROM #{@table}"
        response = []
        @cn.exec( sql ) do |result|
            result.each do |row|
                dictionary = {}
                @fillable.each {|index| dictionary[index.to_sym] = row.values_at(index)}
                response << dictionary
            end
        end
        return response
    end

    def create request
        sql = "INSERT INTO #{@table}("
        values = []
        keys = []
        request.each do |index,item|
            @fillable.each do |index_f|
                if index_f == index.to_s and index.to_s != @primary_key
                    keys << index_f
                    values << "'#{item}'"
                end
            end
        end
        sql+= "#{keys.join(",")}) VALUES(#{values.join(",")})"
        @cn.exec( sql )
    end

    def update id, request
        sql = "UPDATE #{@table} SET "
        updates = []
        request.each do |index,item|
            @fillable.each do |index_f|
                if index_f == index.to_s and index.to_s != @primary_key
                    updates << "#{index} = '#{item}'"
                end
            end
        end
        sql+= updates.join(',') + " WHERE #{@primary_key} = #{id}"
        @cn.exec( sql )
    end

    def delete id
        sql = "DELETE FROM #{@table} WHERE #{@primary_key} = '#{id}'"
        @cn.exec( sql )
    end
end
