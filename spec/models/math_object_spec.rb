# == Schema Information
#
# Table name: math_objects
#
#  id         :integer          not null, primary key
#  name       :string
#  js         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe MathObject, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
