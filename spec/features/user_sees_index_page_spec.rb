require 'rails_helper'

describe 'User visits /astronauts' do

  before(:each) do
    @astronaut_1 = Astronaut.create(name: "Neil Armstrong", age: 40, job: "Captain")
    @astronaut_2 = Astronaut.create(name: "Buzz Alrdin", age: 42, job: "Engineer")
  end

  it 'user sees astronaut name, age, and job' do
    visit '/astronauts'

    expect(page).to have_content(@astronaut_1.name)
  end
end
