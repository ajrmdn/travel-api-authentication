require 'rails_helper'

FactoryBot.define do
   factory :user do
     username {"testy1"}
     email {"testytesterson11@testing.com"}
     password {"testpassword"}
   end
end
