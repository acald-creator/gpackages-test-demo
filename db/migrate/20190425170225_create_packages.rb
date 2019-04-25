class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :category
      t.string :name
      t.string :name_sort
      t.string :description
      t.string :longdescription
      t.string :homepage
      t.string :license
      t.string :licenses
      t.string :herds
      t.string :maintainers
      t.string :useflags
      t.string :metadata_hash

      t.timestamps
    end
  end
end
