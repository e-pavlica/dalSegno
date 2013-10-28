class Message
  include Mongoid::Document
  embeds_many :replies
  belongs_to :topic

  # has_many :message_topics
  belongs_to :user

  field :subject, type: String
  field :message_body, type: String

end
