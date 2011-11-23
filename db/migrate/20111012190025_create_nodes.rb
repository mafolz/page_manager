class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.integer :page_id
      t.string :path
      t.string :locale
      t.string :format
      t.text :keywords
      t.text :title
      t.text :text

      t.timestamps
    end
  end
end
