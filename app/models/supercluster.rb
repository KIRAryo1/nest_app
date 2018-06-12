class Supercluster < ApplicationRecord
  belongs_to :universe
  has_many   :galaxies
end
