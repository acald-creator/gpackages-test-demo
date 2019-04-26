class CreateUseflags < ActiveRecord::Migration[5.2]
  def change
    create_table :useflags do |t|
      t.string :name
      t.text :description
      t.string :atom
      t.string :scope
      t.string :use_expand_prefix

      t.timestamps
    end
  end
end
