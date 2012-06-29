class Property < ActiveRecord::Base
  # Mass Assignment
  attr_accessible :semantic_schema_id, :data_model_id, :name, :description, :sample_data
  
  # Relations
  belongs_to :semantic_schema, inverse_of: :properties
  belongs_to :data_model, inverse_of: :properties
end
