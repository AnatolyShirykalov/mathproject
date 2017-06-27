class Dependence < ApplicationRecord
  belongs_to :provider, polymorphic: true
  belongs_to :dependant, polymorphic: true
end
