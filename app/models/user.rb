require 'bcrypt'

class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true

    before_save { self.email = email.downcase }

    has_secure_password

end
