class Poa < ActiveRecord::Base
  validates :gname, :gaddress1, :gpostcode, :a1name, :a1address1, :a1postcode, :a2name, :a2address1, :a2postcode, presence: true
end
