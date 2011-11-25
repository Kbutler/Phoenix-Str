class RemoveIpDetailsFromAdminedLogins < ActiveRecord::Migration
  def up
    remove_column :admined_logins, :ip_hash
    remove_column :admined_logins, :ip_salt
  end

  def down
    add_column :admined_logins, :ip_salt, :string
    add_column :admined_logins, :ip_hash, :string
  end
end
