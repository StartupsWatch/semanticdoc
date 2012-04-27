class CreateSemanticSchemas < ActiveRecord::Migration
  def change
    create_table :semantic_schemas do |t|
      t.string        :name
      t.string        :ancestry
      t.timestamps
    end
    
    add_index :semantic_schemas, :name
    add_index :semantic_schemas, :ancestry
  end
end
