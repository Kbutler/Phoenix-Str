class AdminedLogin < ActiveRecord::Base

  def self.authenticate(name, password, ip_add)
    user = find_by_name(name)
    if user &&
       user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt) &&
       user.ip_hash       == BCrypt::Engine.hash_secret(ip_add, user.ip_salt)
      puts name
      puts password
      puts ip_add
      user
    else
      puts name
      puts password
      puts ip_add
      nil
    end
  end
end
