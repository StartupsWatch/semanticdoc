class BasicDataType < ActiveRecord::Base
  # Mass Assignment
  attr_accessible :name
  
  # Relations
  include ::Sdoc::DataModel
end
