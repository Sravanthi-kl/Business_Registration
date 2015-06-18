class Franchisemaster < ActiveRecord::Base
  attr_accessible :effectivefrom, :franchiseename, :franchisename, :franchisetype, :openingdate, :owneremailid


  validates :franchisetype,:franchisename,:franchiseename,:owneremailid,:openingdate,:effectivefrom,:presence => true
  validates :franchisetype,:franchisename,:franchiseename, :length => { :maximum =>10 }
  validates :franchisename, :uniqueness => true
  
end

