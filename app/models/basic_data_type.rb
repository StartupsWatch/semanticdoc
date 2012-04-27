class BasicDataType < ActiveRecord::Base
  # Mass Assignment
  attr_accessible :name
  
  include ::Sdoc::DataModel
end
