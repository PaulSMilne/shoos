require_relative '../db/sql_runner'

class Shoe

attr_reader :id, :model, :size, :color

      def initialize(params)
        @id = nil || params['id'].to_i
        @model = params['model']
        @size = params['size'].to_i
        @color = params['color'].to_i
      end

      def save
        sql="INSERT INTO shoes (
          model,
          size,
          color) VALUES (
          '#{@model}',
           #{@size},
           #{@color}) RETURNING *"
        shoe_data = SqlRunner.run(sql)
        @id = shoe_data.first['id'].to_i
      end

      def self.all
        sql = "SELECT * FROM shoes"
        shoes = SqlRunner.run(sql)
        result = shoes.map {|shoe| Shoe.new(order)}
        return result
      end

end