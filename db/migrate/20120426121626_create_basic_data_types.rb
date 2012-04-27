class CreateBasicDataTypes < ActiveRecord::Migration
  def change
    create_table :basic_data_types do |t|
      t.string        :name
      t.timestamps
    end
  end
end
