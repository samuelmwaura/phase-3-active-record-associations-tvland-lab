class Character < ActiveRecord::Base
  belongs_to(:show) #creates a show instance method that helps know which show instance is the owner of the character    
  belongs_to(:actor)


  def say_that_thing_you_say #returns a string with the character's name and catchphrase
    "#{self.name} always says: #{self.catchphrase}"
  end
    
end