# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  question   :string
#  ans1       :string
#  ans2       :string
#  ans3       :string
#  rans       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :question do
    question "MyString"
    ans1 "MyString"
    ans2 "MyString"
    ans3 "MyString"
    rans "MyString"
  end
end
