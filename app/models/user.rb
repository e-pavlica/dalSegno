require 'bcrypt'

class User
  include Mongoid::Document
  include Gravtastic
  gravtastic

  has_many :messages

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
  # before_save :check_existing_email
  validates :email.downcase, uniqueness: true, presence: true, format: {:with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}

  
  def authenticate(password)
    if self.hashed_password == BCrypt::Engine.hash_secret(password, self.salt)
      true
     else 
      false
    end
  end

  # def check_existing_email
  #   if User.find_by(:email)
  #     render :new, notice: "That email is already associated with an account."
  #   end
  # end

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