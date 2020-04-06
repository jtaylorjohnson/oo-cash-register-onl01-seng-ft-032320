class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    quantity.times 
  end

  def apply_discount
    if @discount > 0
      @total -= (@total * @discount)/100
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    if @items == []
      then @total = 0.0 
    else 
      @total -= @price
    end
  end

end

