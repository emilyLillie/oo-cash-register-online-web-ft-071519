class CashRegister
<<<<<<< HEAD
  attr_reader :discount, :items
  attr_accessor :total
  
  def initialize(discount=0)
    @total = 0 
    @discount = discount
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
    @last_total = @total
    @total += price * quantity
    quantity.times do 
     @items << title 
    end 
  end
 
 def apply_discount
   if @discount==0 
     "There is no discount to apply."
   else 
     @total -= @total * @discount / 100
    "After the discount, the total comes to $#{@total}."
   end
 end
  
 def void_last_transaction
    @total = @last_total 
 end
=======
  attr_reader :discount
  attr_accessor :total
  
  def initialize(discount=20)
    @total = 0 
    @discount = discount
  end 
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
 
 def apply_discount
   @total -= @total * @discount / 100
   
 end
  
  
>>>>>>> 1fb5f5f5d39d9fb4d049c541b71f4117fa05e547
  
end
