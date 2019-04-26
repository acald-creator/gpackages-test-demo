class CreateVersions < ActiveRecord::Migration[5.2]
  def change
    create_table :versions do |t|
      t.string :version
      t.string :package
      t.string :atom
      t.integer :sort_key
      t.string :subslot
      t.string :eapi
      t.string :keywords
      t.string :masks
      t.string :use
      t.string :restrict
      t.string :properties
      t.string :metadata_hash
      

      t.timestamps
    end
  end
end
