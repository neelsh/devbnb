class PagesController < ApplicationController
  def home
    # @featured_users = User.where(featured: true)
    @services = Service.first(8)
  end
end
