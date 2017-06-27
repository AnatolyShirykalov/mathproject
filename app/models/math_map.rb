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
