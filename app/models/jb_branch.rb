class JbBranch < ActiveRecord::Base
  attr_accessible :branchaddress, :branchname, :branchtype, :city, :contactnumbers, :maplink, :shortname, :workinghours

   validates :branchaddress,:branchname,:contactnumbers,:workinghours,:maplink,:presence => true
   validates :branchaddress,:branchname,:shortname, :length => { :maximum =>10 }
   validates :branchname, :uniqueness => true
   validates :contactnumbers, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Valid Format :xxx-xxx-xxx" }
end