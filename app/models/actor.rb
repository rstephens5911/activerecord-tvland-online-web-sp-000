class Actor < ActiveRecord::Base
  has_many :shows, through: :characters
  has_many :characters

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.character.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end
