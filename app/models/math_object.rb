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

class MathObject < ApplicationRecord
  has_many :mo_ps, -> {where kind: 'oo'},
    class_name: "Dependence", as: :dependant,
    dependent: :destroy
  has_many :mo_ds, -> {where kind: 'oo'},
    class_name: "Dependence", as: :provider,
    dependent: :destroy
end
