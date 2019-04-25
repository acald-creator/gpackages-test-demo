class Category < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  
  index_name "categories-#{Rails.env}"
  
  attribute :name,          String, mapping: {
    type: 'keyword'
    }
  attribute :description,   String, mapping: {
    type: 'text'
    }
  attribute :metadata_hash, String, mapping: {
    type: 'text'
    }
  
  ###
  # Determines if the document needs an update from the repository model
  #
  # @params [Portage::Repository::Category] category_model
  def needs_import?(category_model)
    metadata_hash != category_model.metadata_hash
  end
end
