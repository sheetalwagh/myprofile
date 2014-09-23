# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    email "MyString"
    address "MyString"
    companyname "MyString"
    user nil
  end
end
