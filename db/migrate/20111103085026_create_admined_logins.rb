class CreateAdminedLogins < ActiveRecord::Migration
  def change
    create_table :admined_logins do |t|
      t.string :name
      t.string :password_hash
      t.string :password_salt
      t.string :ip_hash
      t.string :ip_salt

      t.timestamps
    end
  end
end
