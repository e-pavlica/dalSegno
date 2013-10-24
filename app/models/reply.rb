class Reply
  include Mongoid::Document
  embedded_in :message

  field :reply_text, type: String

end
