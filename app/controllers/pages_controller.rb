class PagesController < ApplicationController
  def home
    # @featured_users = User.where(featured: true)
    @services = Service.last(8)
  end
end
