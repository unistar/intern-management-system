# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    name "MyString"
    email "MyString"
    univ "MyString"
    degree "MyString"
    grad_time "2013-08-05"
    cell 1
  end
end
