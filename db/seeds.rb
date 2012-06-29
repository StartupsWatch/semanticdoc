["boolean", "date", "number", "float", "integer", "string", "url"].each do |data_type|
  BasicDataType.create name: data_type
end
