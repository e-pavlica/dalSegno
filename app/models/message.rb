class Message
  include Mongoid::Document
  has_many :replies

  field :subject, type: String
  field :message_body, type: String

end
