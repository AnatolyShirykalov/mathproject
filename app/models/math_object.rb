class MathObject < ApplicationRecord
  has_many :mo_ps, -> {where kind: 'oo'},
    class_name: "Dependence", as: :dependant,
    dependent: :destroy
  has_many :mo_ds, -> {where kind: 'oo'},
    class_name: "Dependence", as: :provider,
    dependent: :destroy
end
