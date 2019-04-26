class Category < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  include Kkuleomi::Store::Model
  
  index_name "categories-#{Rails.env}"

  attribute :name,          String, mapping: { type: 'keyword' }
  attribute :description,   String, mapping: { type: 'text' }
  attribute :metadata_hash, String, mapping: { type: 'text' }
end