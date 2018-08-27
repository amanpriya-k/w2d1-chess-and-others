# PHASE 2
def convert_to_int(str)
  Integer(str)
rescue ArgumentError
  nil
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == 'coffee'
    raise CoffeeError
  else 
    raise StandardError
  end 
end

def feed_me_a_fruit
  begin
    puts "Hello, I am a friendly monster. :)"

    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp.downcase 
    reaction(maybe_fruit) 
  rescue CoffeeError
    puts "Thanks the coffee. May I have something else?!"
    retry
  rescue StandardError
    puts "Ick!! I can't eat that!"
  end
end  

class CoffeeError < StandardError
end 
# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    if name.empty?
      raise ArgumentError, "You MUST have a name."
    else 
      @name = name
    end 
    if yrs_known < 5
      raise ArgumentError, "You can't be best friends in less than 5 years.:("
    else 
      @yrs_known = yrs_known
    end 
    if fav_pastime.empty?
      raise ArgumentError, "You MUST have a hobby."
    else 
      @fav_pastime = fav_pastime
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


