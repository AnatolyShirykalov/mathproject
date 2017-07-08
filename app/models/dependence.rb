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

class Dependence < ApplicationRecord
  belongs_to :provider, polymorphic: true
  belongs_to :dependant, polymorphic: true
end
