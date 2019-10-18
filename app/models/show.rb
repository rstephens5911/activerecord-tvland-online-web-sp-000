class Show < ActiveRecord::Base
  has_many :actors
  has_many :characters
  belongs_to :network

  def actors_list
    full_name = "#{self.first_name} #{self.last_name}"
  end
end
