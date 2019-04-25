module Kkuleomi::Store
  def self.refresh_index
    Category.gateway.refresh_index!
  end
  
  def self.create_index(force = true)
    types = [
      Category
      ]
  end
end