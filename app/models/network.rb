class Network < ActiveRecord::Base
  has_many(:shows) #creates an instance method shows that helps retrieve all the shows in a given network instance

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end
