class Item
  include Mongoid::Document
  include Mongoid::Timestamps #auto setting :created_at and :updated_at

  field :key, type: String
  field :name, type: String
  field :price_list, type: Array
  field :web_id, type: String
end
