# email:string
# password_digest:string

# password:string virtual
# password_confirmation: string virtual

class User < ApplicationRecord
  has_many :twitter_accounts
  has_secure_password
  validates :email,
  format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Email invalid"  },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }
end