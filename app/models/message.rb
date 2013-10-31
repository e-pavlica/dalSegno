class Message
  include Mongoid::Document
  has_many :replies
  belongs_to :topic

  # has_many :message_topics
  belongs_to :user

  field :subject, type: String
  field :message_body, type: String
  field :time, type: DateTime

end
