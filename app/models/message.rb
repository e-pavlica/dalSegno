class Message
  include Mongoid::Document
  embeds_many :replies
  has_and_belongs_to_many :mtopics, class_name: "Topic", index: true, inverse_of: :tmessages

  # has_many :message_topics

  field :subject, type: String
  field :message_body, type: String

end
