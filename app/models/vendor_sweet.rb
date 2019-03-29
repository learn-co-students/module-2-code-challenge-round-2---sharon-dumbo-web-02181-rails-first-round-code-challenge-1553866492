class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :sweet, uniqueness: true

end
