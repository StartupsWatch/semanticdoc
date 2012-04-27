class CreateDataModels < ActiveRecord::Migration
  def change
    create_table :data_models do |t|
      t.string        :acceptable_data_type
      t.integer       :acceptable_data_id
      t.timestamps
    end
    add_index :data_models, [:acceptable_data_id, :acceptable_data_type]
  end
end
