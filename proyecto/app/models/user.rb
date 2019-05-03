class User < ApplicationRecord
    before_save { self.email = email.downcase}
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true
    validates :password, presence: true
    has_many :posts, dependent: :destroy
end
