class Actor < ActiveRecord::Base
  has_many(:characters)  #creates a characters instance methods
  has_many(:shows,through: :characters) #many to many relationships between actors and genres.Creats a shows instance method

  def full_name
  "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles =[]
    self.characters.each do |character|
    roles << "#{character.name} - #{character.show.name}"  #that was a lot of glitch
    end     
    roles
  end
end