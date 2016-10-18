require_relative '../db/sql_runner'

class Order

attr_reader :id, :name, :address, :quantity

      def initialize(params)
        @id = nil || params['id'].to_i
        @name = params['name']
        @address = params['address']
        @quantity = params['quantity'].to_i
      end

      def save
        sql="INSERT INTO orders (
          name,
          address,
          quantity) VALUES (
          '#{@name}',
          '#{@address}',
          #{@quantity}) RETURNING *"
        order_data = SqlRunner.run(sql)
        @id = order_data.first['id'].to_i
      end

      def self.all
        sql = "SELECT * FROM orders"
        orders = SqlRunner.run(sql)
        result = orders.map {|order| Order.new(order)}
        return result
      end

end