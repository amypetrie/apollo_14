require 'rails_helper'

describe Astronaut, type: :model do

  before(:each) do
    @astronaut_1 = Astronaut.create(name: "Neil Armstrong", age: 40, job: "Captain")
    @mission_1 = @astronaut_1.missions.create(title: "Mission 1", time_in_space: 365)

    @mission_2 = @astronaut_1.missions.create(title: "Mission 2", time_in_space: 180)
    @astronaut_2 = @mission_1.astronauts.create(name: "Buzz Alrdin", age: 50, job: "Engineer")
  end

  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'Model methods' do
    it 'average_age' do
      average = Astronaut.average_age

      expect(average).to eq(45)
    end
  end
end
