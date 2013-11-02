class SomethingsController < ApplicationController
  before_action :set_something, only: [:show, :edit, :update, :destroy]

  def index
    @somethings = Something.all.page(params[:page])
  end

  def show
  end

  def new
    @something = Something.new
  end

  def edit
  end

  def create
    @something = Something.new(something_params)

    if @something.save
      redirect_to @something, notice: 'Something was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @something.update(something_params)
      redirect_to @something, notice: 'Something was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @something.destroy
    redirect_to somethings_url, notice: 'Something was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_something
      @something = Something.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def something_params
      params.require(:something).permit(:name, :size)
    end
end
