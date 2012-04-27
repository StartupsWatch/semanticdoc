class Property < ActiveRecord::Base
  # Mass Assignment
  attr_accessible :semantic_schema_id, :data_model_id, :name, :description, :sample_data
  
  belongs_to :semantic_schema, inverse_of: :properties
end
