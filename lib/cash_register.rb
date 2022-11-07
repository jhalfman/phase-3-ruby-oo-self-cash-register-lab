require 'pry'
class CashRegister

    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @last_transaction = price * quantity
        @total += (price * quantity)
        quantity.times do
            @items << title
        end
    end

    def apply_discount
        if @discount != 0
            @total = @total * (1 - (@discount /100.to_f))
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total = @total - @last_transaction
    end

    
end
