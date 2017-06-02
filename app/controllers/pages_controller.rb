class PagesController < ApplicationController
   skip_before_action :authenticate_user!, only: :home

  def home
    # @featured_users = User.where(featured: true)
    @services = Service.last(4)
  end

  def contracts
    # The ones where current user has been hired
    @my_contracts = current_user.booked_contracts
    @booked_contracts = current_user.contracts
    # TODO the contracts where current user has hired other users

  end

  def myservices
    @services = Service.where(user_id: current_user.id)
  end
end

