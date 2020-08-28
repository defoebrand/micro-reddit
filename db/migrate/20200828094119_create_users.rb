class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username, unique: true, present: true
      t.string :email, unique: true, present: true
      t.string :password, present: true

      t.timestamps
    end
  end
end
