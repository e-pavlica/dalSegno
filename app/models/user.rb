require 'bcrypt'

class User
  include Mongoid::Document

  attr_accessor :password#, :password_confirmation

  field :email, type: String
  field :name, type: String
  field :birthday, type: Date
  field :address, type: String
  field :city, type: String
  field :state, type: String
  field :zip, type: String
  field :phone, type: String
  field :salt, type: String
  field :hashed_password, type: String

  before_save :hash_password
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  # validates :password, confirmation: true

  def authenticate(password)
    if self.hashed_password == BCrypt::Engine.hash_secret(password, self.salt)
      true
     else 
      false
    end
  end

  private
  def hash_password
    if password.present?
      self.salt = BCrypt::Engine.generate_salt
      self.hashed_password =
       BCrypt::Engine.hash_secret(password, self.salt)
      password = nil #= password_confirmation 
    end
  end
end