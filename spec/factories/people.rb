# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    name "MyString"
    bod "2014-04-15"
    height "9.99"
    alive false

    factory :invalid_person do
      name nil
    end
  end

end
