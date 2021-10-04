class User < ApplicationRecord

    validates_presence_of :email, :full_name, :location, :password
    validates_confirmation_of :password
    validates_length_of :bio, :minimum => 30, :maximum => 200, :allow_blank => false

end
