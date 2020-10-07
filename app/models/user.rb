
class User < ActiveRecord::Base
    has_many :plants

    has_secure_password

    validates :email, presence: true
    validates :email, uniqueness: true


    def slug
        email.downcase.split("@").first
    end

    def self.find_by_slug(slug)
        User.all.find{|user| user.slug == slug}
    end
    
end
