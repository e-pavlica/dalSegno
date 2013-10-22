class Reply
  include Mongoid::Document
  belongs_to :message

  field :reply_text, type: String

end
