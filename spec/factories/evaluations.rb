# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :evaluation do
    interview_time "2013-08-05"
    interviewer "MyString"
    subject "MyString"
    comm_skill "MyString"
    tech_skill "MyString"
    passion "MyText"
    potential "MyString"
    fit "MyString"
    employee_id 1
  end
end
