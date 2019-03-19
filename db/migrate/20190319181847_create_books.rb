class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.belongs_to :user, foreign_key: true
      t.string :genre

      t.timestamps
    end
  end
end
