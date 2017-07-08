# == Schema Information
#
# Table name: math_maps
#
#  id         :integer          not null, primary key
#  name       :string
#  js         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :math_map do
    name "MyString"
    js "MyString"
  end
end
