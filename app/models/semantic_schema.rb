class SemanticSchema < ActiveRecord::Base
  # Mass Assignment
  attr_accessible :name, :description, :ancestry, :properties_attributes, :parent_id
  
  # Relations
  has_ancestry
  has_many :properties, inverse_of: :semantic_schema
  include Sdoc::DataModel
  
  # Nested attributes
  accepts_nested_attributes_for :properties, reject_if: lambda { |p| p[:data_model_id].blank? || p[:name].blank? }, allow_destroy: true
  
end
