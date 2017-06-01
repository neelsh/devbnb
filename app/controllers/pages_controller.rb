class PagesController < ApplicationController
  def home
    # @featured_users = User.where(featured: true)
    @services = Service.last(4)
  end

  def contracts
    # The ones where current user has been hired
    @contracts = Contract.where(user_id: current_user.id)

    # TODO the contracts where current user has hired other users
  end

  def myservices
    @services = Service.where(user_id: current_user.id)
  end
end
