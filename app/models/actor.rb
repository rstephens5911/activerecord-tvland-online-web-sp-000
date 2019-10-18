class Actor < ActiveRecord::Base
  has_many :shows
  has_many :characters

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.shows
    self.characters
  end
end
