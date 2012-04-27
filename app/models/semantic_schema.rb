class SemanticSchema < ActiveRecord::Base
  # Mass Assignment
  attr_accessible :name, :ancestry
  
  include Sdoc::DataModel
  has_ancestry
  has_many :properties, inverse_of: :semantic_schema
end
