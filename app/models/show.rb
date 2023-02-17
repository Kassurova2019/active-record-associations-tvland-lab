require "pry"
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  def has_data_atributes
    
  end

  def build_network(the_call_letters_hash)
    #binding.pry
new_network = Network.new(call_letters: the_call_letters_hash[:call_letters])
self.network = new_network
  end

  def actors_list
    self.actors.map do |actor| 
        "#{actor.first_name} #{actor.last_name}"
    end
   # binding.pry
  end

end