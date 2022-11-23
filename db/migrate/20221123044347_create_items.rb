class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :user,          null: false, foreign_key: true
      t.integer :category_id,      null: false
      t.text :explanation,         null: false
      t.timestamps
    end
  end
end
