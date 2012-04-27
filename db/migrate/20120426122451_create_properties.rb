class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.references    :semantic_schema
      t.integer       :data_model_id
      t.string        :name
      t.string        :description
      
      t.timestamps
    end
  end
end
