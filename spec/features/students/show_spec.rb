require 'rails_helper'

RSpec.describe 'Students show page' do

  it 'visits student show page and sees a list of students with their attributes' do
    student1 = Student.create!(name: 'student1', age: 1, house: 'house1')
    student2 = Student.create!(name: 'student2', age: 2, house: 'house2')
    student3 = Student.create!(name: 'student3', age: 3, house: 'house3')

    visit '/students'

    expect(page).to have_content(student1.name)
    expect(page).to have_content(student1.age)
    expect(page).to have_content(student1.house)

    expect(page).to have_content(student2.name)
    expect(page).to have_content(student2.age)
    expect(page).to have_content(student2.house)

    expect(page).to have_content(student3.name)
    expect(page).to have_content(student3.age)
    expect(page).to have_content(student3.house)
    
    expect(Student.count).to eq(3)
  end
end
