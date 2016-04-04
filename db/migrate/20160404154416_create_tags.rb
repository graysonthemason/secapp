class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag, null: false
      t.string :version, null: false
      t.boolean :custom
      t.boolean :abstract
      t.string :datatype
      t.string :iord
      t.string :crdr
      t.text :tlabel
      t.text :doc
      t.timestamps null: false
    end
  end
end
