# your code goes here
class Person
  #creates getter and setter method for bank_account
  attr_accessor :bank_account

  # Create getter methods for name, hygiene & happiness
  attr_reader :name, :happiness, :hygiene
  # creates person object, requiring a name to be passed in
  def initialize(name)
    # initializes persons name with given argument
    @name = name
    # initializes each persons bank_account with $25
    @bank_account = 25
    # initializes each persons happiness to a level of 8
    @happiness = 8
    # initializes each persons hygeine to a level of 8
    @hygiene = 8
  end
#setter method for hygiene
  def hygiene=(hygiene_points)
    @hygiene = hygiene_points
    #sets max value at 10
    if @hygiene > 10
      @hygiene = 10
    #sets min value at 0
    elsif @hygiene < 0
      @hygiene = 0
    end
  end
# setter method for happiness
  def happiness=(happiness_points)
    @happiness = happiness_points
  # Sets max value for hapiness points to 10
    if happiness_points > 10
      @happiness = 10
  elsif happiness_points < 0
      @happiness = 0
    end
  end
# checks if person is happy
  def happy?
    #checks to see if happiness level is above 7
    if @happiness > 7
       true
    else
       false
    end
  end
# checks if person is clean
  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end
#adds dollar amount to persons bank account
  def get_paid(salary)
    # increment bank_account by given salary 
    @bank_account+= salary
    return "all about the benjamins"
  end

  #cleans person by 4 points
  def take_bath
    # does spacing matter? I.E does hygeine = & hygeine= still call the same method?
    #increments instances hygiene level using hygeine= method defined above
    self.hygiene= @hygiene+4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    #decrements this instances hygeine level by 3 using hygeine= setter method
    #defined above
    self.hygiene = @hygiene-3
    #increments this instances hapiness level by 2 using hapiness= setter method
    #defined above
    self.happiness = @happiness+2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    # increments callers hapiness by 3
    self.happiness = @happiness+3
    # increments friends happiness by 3
    friend.happiness += 3
    #greets friend
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
# starts conversation accepts 2 arguments a person to strike a convo with and a topic
  def start_conversation(person, topic)
    #checks topic of conversation
    # Checks if topic is == to politics
    if topic == "politics"
      # decrements selfs happiness by 2
      self.happiness = @happiness - 2
      #decrements friends happiness by 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
      # checks if topic is == to weather
    elsif topic == "weather"
      # increments selfs hapiness by 1
      self.happiness = @happiness + 1
      # increments friends happiness by 1
      person.happiness += 1
      "blah blah sun blah rain"
      # if topic is anything other than politics or weather
    else
      "blah blah blah blah blah"
    end
  end


end
