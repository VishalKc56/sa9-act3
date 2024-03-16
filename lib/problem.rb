#Please note that I translated starter2.py to ruby, Thank you.

class VendingMachine
    def initialize
      @bottles = 20
    end
  
    def purchase(amount)
      @bottles -= amount
    end
  
    def restock(amount)
      @bottles += amount
    end
  
    def get_inventory
      @bottles
    end
  
    def report
      puts "Inventory: #{@bottles} bottles"
    end
end