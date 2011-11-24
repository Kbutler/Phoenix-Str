class AdminedLogin < ActiveRecord::Base

  def self.authenticate( name, password )
    user = find_by_name(name)
    if user &&
       user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
end
