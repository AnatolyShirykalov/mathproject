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

class MathMap < ApplicationRecord
  has_many :mm_ps, -> {where kind: 'mm'},
    class_name: "Dependence", as: :dependant,
    dependent: :destroy
  has_many :mm_ds, -> {where kind: 'mm'},
    class_name: "Dependence", as: :provider,
    dependent: :destroy
  has_many :mo_ps, -> {where kind: 'mo'},
    class_name: "Dependence", as: :dependant,
    dependent: :destroy
  has_many :objects, through: :mo_ps, source: :provider,
    source_type: "MathObject"
  has_many :maps, through: :mm_ps, source: :provider,
    source_type: "MathMap"
end
