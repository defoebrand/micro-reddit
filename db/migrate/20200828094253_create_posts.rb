class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      #t.belongs_to :user, index: { unique: true }, foreign_key: true
      t.string :title
      t.text :body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
