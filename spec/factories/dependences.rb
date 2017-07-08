# == Schema Information
#
# Table name: dependences
#
#  id             :integer          not null, primary key
#  name           :string
#  provider_type  :string
#  provider_id    :integer
#  dependant_type :string
#  dependant_id   :integer
#  kind           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :dependence do
    name "MyString"
    provider nil
    depentant nil
  end
end
