class Customer
    attr_accessor :name, :age
 
  @@all = []
 
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)      #referring to meal class
  end
  
  def meals
    Meal.all.select do |meal|       
      #iterating through every instance of meal and returning ones where meal.customer atches the current instance
      meal.customer == self         
      #customer looks at all meals and select those that belong to them
    end
  end
  
end