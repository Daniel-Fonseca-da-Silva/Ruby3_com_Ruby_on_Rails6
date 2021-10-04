class User < ApplicationRecord

    validates_presence_of :email, :full_name, :location, :password

end
