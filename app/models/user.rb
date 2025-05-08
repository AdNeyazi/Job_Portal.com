class User < ApplicationRecord
  # Devise modules
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist

  # Enums for roles
  enum role: { candidate: 0, admin: 1 }

  has_many :job_applications, dependent: :destroy

  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\z/
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
end