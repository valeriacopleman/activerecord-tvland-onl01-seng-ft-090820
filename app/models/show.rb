class Show < ActiveRecord::Base
  
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    self.actors.collect do |a|
      a.full_name
    end
    
  end
  
end