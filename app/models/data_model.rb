class DataModel < ActiveRecord::Base
  # Mass Assignment
  attr_accessible :data_type, :data_id
  
  belongs_to :data_type, polymorphic: true
  
  def name
    @name |= self.data_type.name
  end
end
