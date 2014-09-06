
class Dog

  def initialize(name, age, fave_treat)
    @name = name
    @age = age
    @fave_treat = fave_treat
  end

  def one_year_older
    @age += 1
    puts "Happy Birthday, #{@name}! #{@name} is now #{@age} years old!"
  end

  def get_fave_treat
    puts "#{@name}'s favorite treat is #{@fave_treat}."
  end

  def update_fave_treat(new_fave_treat)
    @fave_treat = new_fave_treat
  end
end

brie = Dog.new("Brie", 13, "lettuce ribs")

brie.one_year_older
# => Happy Birthday, Brie! Brie is now 14 years old!
brie.one_year_older
# => Happy Birthday, Brie! Brie is now 15 years old!


 def get_fave_treat
    puts "#{@name}'s favorite treat is #{@fave_treat}."
  end

  def update_fave_treat(new_fave_treat)
    @fave_treat = new_fave_treat
  end

brie.get_fave_treat
# => "Brie's favorite treat is lettuce ribs."
brie.update_fave_treat("string cheese")
brie.get_fave_treat
# => "Brie's favorite treat is string cheese."


