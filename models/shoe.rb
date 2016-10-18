require_relative '../db/sql_runner'

class Shoe

attr_reader :id, :name, :address, :quantity, :size

      def initialize(params)
        @id = nil || params['id'].to_i
        @name = params['name']
        @address = params['address']
        @quantity = params['quantity'].to_i
        @size = params['size']
      end

      def save
        sql="INSERT INTO shoes (
          name,
          address,
          quantity,
          size) VALUES (
          '#{@name}',
          '#{@address}',
          #{@quantity}, 
          '#{@size}') RETURNING *"
        shoe_data = SqlRunner.run(sql)
        @id = shoe_data.first['id'].to_i
      end

      def self.all
        sql = "SELECT * FROM shoes"
        shoes = SqlRunner.run(sql)
        result = shoes.map {|shoe| Shoe.new(shoe)}
        return result
      end

end