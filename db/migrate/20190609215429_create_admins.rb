class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :email,                 null: false
      t.string :encrypted_password,    null: false
      t.string :salt,                  null: false
      t.timestamps
    end
  end
end
