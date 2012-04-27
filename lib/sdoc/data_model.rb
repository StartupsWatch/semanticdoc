module Sdoc
  module DataModel
    extend ActiveSupport::Concern
    
    included do
      has_one :data_model, as: :acceptable_data, dependent: :destroy
      after_create :create_data_model_callback
      
      def create_data_model_callback
        self.create_data_model
      end
    end

    module ClassMethods

    end
  end
end