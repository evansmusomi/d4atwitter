class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name, index: true
      t.date :date_of_birth
      t.string :gender
      t.string :email
      t.string :profile_pic

      t.timestamps
    end
  end
end
