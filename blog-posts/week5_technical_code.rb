# ORIGINAL CODE

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

# REFACTORED CODE

class Dog

  #defines reader and writer instance methods for @name and @fave_treat
  attr_accessor :name, :fave_treat
  # defines a reader instance method for @age
  attr_reader :age

  def initialize(name, age, fave_treat)
    @name = name
    @age = age
    @fave_treat = fave_treat
  end

  def one_year_older
    @age += 1
    puts "Happy Birthday, #{@name}! #{@name} is now #{@age} years old!"
  end

  def Dog.oldest(*dogs)
    dogs.max_by(&:age)
  end

end

# TEST CODE

brie = Dog.new("Brie", 13, "lettuce ribs")

p brie.one_year_older
# => Happy Birthday, Brie! Brie is now 14 years old!
p brie.one_year_older
# => Happy Birthday, Brie! Brie is now 15 years old!

p brie.fave_treat
# => "lettuce ribs"
brie.fave_treat = "string cheese"
p brie.fave_treat
# => "string cheese"


