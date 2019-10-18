class Show < ActiveRecord::Base
  has_many :actors
  has_many :characters
  belongs_to :network

  def actors_list
    self.name
  end


  
end
