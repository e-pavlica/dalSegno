class Reply
  include Mongoid::Document
  belongs_to :message
  belongs_to :user

  field :reply_text, type: String
  field :time, type: DateTime

end
