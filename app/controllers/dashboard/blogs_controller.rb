class Dashboard::BlogsController < Dashboard::ApplicationController
  before_action :authenticate_user!

  def index; end

  def create
    Blog.create!(blogs_params)
  end

  private 

    def blogs_params
      params.permit(
        :title, 
        :content,
        :cover_image
      )
    end
end