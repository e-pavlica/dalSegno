class Admin
  include Mongoid::Document

  embedded_in :users

  field :is_admin?, type: Boolean

end