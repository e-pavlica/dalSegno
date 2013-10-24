class Message
  include Mongoid::Document
  embeds_many :replies
  has_and_belongs_to_many :topics

  field :subject, type: String
  field :message_body, type: String

end
