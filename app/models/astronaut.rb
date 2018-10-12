class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job
  has_many :astronaut_missions
  has_many :missions, through: :astronaut_missions

  def self.average_age
    average(:age).round
  end

  def self.space_mission_titles
    Astronaut.joins(:missions).pluck(:title).uniq
  end
end
