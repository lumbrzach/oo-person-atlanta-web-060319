class Person
    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    attr_reader :name

    
    attr_accessor :bank_account, :happiness, :hygiene

    # def name=(name)
    #     @name = name
    #   end
     
    #   def name
    #     @name
    #   end

    def happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end

    # def happiness
    #     @happiness
    # end

    def hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene
        end
    end

    # def hygiene
    #     @hygiene
    # end 

    def clean?
      if @hygiene > 7
        return true
      else
        return false
      end
    end

    def happy?
      if @happiness > 7
        return true
      else
        return false
      end
    end
  
    def get_paid(salary)
      @bank_account += salary
      return "all about the benjamins"
    end

    def take_bath
      self.hygiene += 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.happiness += 2
      self.hygiene -= 3
      return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(convo_person, convo_topic)
      if convo_topic == "politics"
        self.happiness -= 2 
        convo_person.happiness -= 2
        return "blah blah partisan blah lobbyist"
      elsif convo_topic == "weather"
        self.happiness += 1
        convo_person.happiness += 1
        return "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
      end
    end
end
