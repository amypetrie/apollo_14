require 'rails_helper'

describe 'User visits /astronauts' do

  before(:each) do
    @astronaut_1 = Astronaut.create(name: "Neil Armstrong", age: 40, job: "Captain")
    @mission_1 = @astronaut_1.missions.create(title: "Mission 1", time_in_space: 365)

    @mission_2 = @astronaut_1.missions.create(title: "Mission 2", time_in_space: 180)
    @astronaut_2 = @mission_1.astronauts.create(name: "Buzz Alrdin", age: 42, job: "Engineer")
  end

  it 'user sees astronaut name, age, and job' do
    visit '/astronauts'

    expect(page).to have_content(@astronaut_1.name)
    expect(page).to have_content(@astronaut_1.age)
    expect(page).to have_content(@astronaut_1.job)
    expect(page).to have_content(@astronaut_2.name)
    expect(page).to have_content(@astronaut_2.age)
    expect(page).to have_content(@astronaut_2.job)
  end
end
