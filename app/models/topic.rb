class Topic
  include Mongoid::Document

  field :topic_name, type: String

  has_many :messages

  # has_many :message_topics

end
