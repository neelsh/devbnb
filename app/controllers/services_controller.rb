class ServicesController < ApplicationController

def index
  @services = Service.all
end

def update
  @service.update(service_params)
  redirect_to service_path(@service)
end

def show
  @service = Service.find(params[:id])
end

def edit
end

def create
  @service = Service.new(service_params)
  if @user.save
    redirect_to service_path(@service)
  else
    render :new
  end
end

  def new
    @service = Service.new
  end

  def destroy
    @service.destroy
    redirect_to services_path
  end


private

def service_params
  params.require(:service).permit(:name)
end

def set_service
    @service = Service.find(params[:id])
  end
end
