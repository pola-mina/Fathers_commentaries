
require 'bcrypt'

class User < ApplicationRecord
    include BCrypt

    def password
        byebug
        @password ||= Password.new(hashed_password)
    end
    
    def password=(new_password)
        byebug
      @password = Password.create(new_password)
      self.hashed_password = @password
    end
end
