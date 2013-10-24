class Topic
  include Mongoid::Document

  field :topic_name, type: String

  has_and_belongs_to_many :tmessages, class_name: "Message", index: true, inverse_of: :mtopics

  # has_many :message_topics

end
