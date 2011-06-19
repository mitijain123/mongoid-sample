class Widget
  include MongoMapper::Document

  key :price, Integer, :default => 0
  key :name, String
end