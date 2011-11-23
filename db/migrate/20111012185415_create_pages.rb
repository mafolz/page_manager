class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :handle
      t.string :state
      t.boolean :published

      t.timestamps
    end
  end
end
