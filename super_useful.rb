# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError
    puts "Invalid input: no string"
    return nil
  end
end
# p convert_to_int("str")
# p convert_to_int("sasef")
# p convert_to_int("4")
#  p convert_to_int(4)
# # p convert_to_int()


# PHASE 3
FRUITS = ["apple", "banana", "orange"]

class CoffeeError < StandardError
end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError
  else
    raise StandardError
  end
end

def feed_me_a_fruit
  begin
  puts "Hello, I am a friendly monster. :)"
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit)
  rescue CoffeeError
    retry
  end
end



# PHASE 4
class YearsError < StandardError
end

class InitializeError < StandardError
end


class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    begin
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
    if @name.empty? || @fav_pastime.empty?
      raise InitializeError

    elsif @yrs_known < 5
      raise YearsError

    end
  rescue InitializeError
  puts "name or fav_pastime could not be empty"
  rescue YearsError
  puts "the year should be more than five"
    end
  end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end
