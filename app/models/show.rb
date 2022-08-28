class Show < ActiveRecord::Base
  has_many(:characters)  #creates characters instance method that enables retrieve all characters related to an instance of a show
  belongs_to(:network)  #creates network method helps retrieve which network instance is associated with a show instance
  has_many(:actors,through: :characters) #creates the #actors method that helps retrieve all the actors associated with a show instance

  def actors_list
    self.actors.map do |actor|
      "#{actor.first_name} #{actor.last_name}"
    end
  end
  
end