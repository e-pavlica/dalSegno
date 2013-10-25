class PagesController < ApplicationController
  skip_before_filter :require_login
  def index
    #nothing to do here.
  end

end
