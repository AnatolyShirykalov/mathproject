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

class Question < ApplicationRecord
end
