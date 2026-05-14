class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = Service.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    @service = current_user.services.build(service_params)

    if @service.save
      redirect_to @service, notice: "Service created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @service.update(service_params)
      redirect_to @service, notice: "Service updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path, notice: "Service deleted."
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :description, :category, :base_price, :duration_minutes)
  end
end