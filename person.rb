pizza = ["crust", "cheese", "sauce", "anchovies"]
thai = ["peanut", "tofu", "noodles"]
sandwich = ["jelly", "peanut butter", "bread"]
class Person

  attr_accessor :name, :allergy, :stomach

  @@has_gluten = /bread|crust|toast/i
  @@has_dairy = /cheese|milk/i
  @@has_nut = /peanut/i
  @@has_soy = /soy|tofu/


  def initialize(name, allergy)
    @name = name
    @allergy = allergy
    @stomach = []
  end

  def eat(food)

    if allergy === "gluten"
      food.each do |i|
        if @@has_gluten.match(i)
          purge(i)
        end
      end

    elsif allergy === "dairy"
      food.each do |i|
        if @@has_dairy.match(i)
          purge(i)
        end
      end

    elsif allergy === "nut"
      food.each do |i|
        if @@has_nut.match(i)
          purge(i)
        end
      end

     elsif allergy === "soy"
      food.each do |i|
        if @@has_soy.match(i)
          purge(i)
        end
      end

    else
      @stomach.push(food)
      puts "Nom nomz! #{name} ate some #{food}"
    end
  end


  def purge(i)
    @stomach = []
    puts "Oh noezz! #{@name} can't eat #{i}!!!"
  end

end

# p1 = Person.new("Chauncy", "dairy")
p2 = Person.new("Susie", "soy")
p3 = Person.new("Leonardo", "gluten")
p4 = Person.new("Melissa", nil)
p5 = Person.new("Steph", "dairy")
p6 = Person.new("Palmer", "nut")
# puts p1.name
# puts p1.allergy
# puts p1.stomach

p2.eat(thai)
p3.eat(pizza)
p4.eat(sandwich)
p5.eat(pizza)
p6.eat(sandwich)



