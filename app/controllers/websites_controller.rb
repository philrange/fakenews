class WebsitesController < ApplicationController

  def index
  	@websites = Website.all
  end

  def show
    @website = Website.find(params[:id])
  end

  def new
  	@website = Website.new
  	@website.get_random_website
  end

  def create
  	@website = Website.new(website_params)

  	if @website.save
  		redirect_to @website
  	else
  		render 'new'
  	end
  end

  def random
  	new
  	render 'show'
  end


private
  def website_params
    params.require(:website).permit(:title, :description, :picture_id, :text, :keyword_id)
  end


end
