class DataModel < ActiveRecord::Base
  # Mass Assignment
  attr_accessible :acceptable_data, :data_id
  
  # Relations
  has_many :properties, inverse_of: :data_model
  belongs_to :acceptable_data, polymorphic: true
  
  # Methods
  def name
    @name ||= self.acceptable_data.name
  end
end
