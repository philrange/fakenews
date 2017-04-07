class WelcomeController < ApplicationController
  def index
  	redirect_to url_for(:controller => :websites, :action => :random)
  end
end
