class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name, index: true, default: ""
      t.string :screen_name, default: ""
      t.string :bio, default: ""
      t.date :date_of_birth
      t.string :gender, default: ""
      t.string :email, default: ""
      t.string :profile_pic, default: ""

      t.timestamps
    end
  end
end
