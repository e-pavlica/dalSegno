class Socialnet
  include Mongoid::Document
  embedded_in :user

  field :twitter, type: String
  field :facebook, type: String
  field :gplus, type: String
  field :github, type: String
  field :linkedin, type: String

end