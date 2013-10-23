require 'bcrypt'

class User
  include Mongoid::Document

  attr_accessor :password, :password_confirmation

  field :email, type: String
  field :salt, type: String
  field :hashed_password, type: String

end