class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_the_owner, only: [:edit, :update, :destroy]

  def listing
    @items = Item.all
  end

  def index
    @items = Item.all

    if params[:location].present?
      @items = @items.near(params[:location], 20)
    else
      @items = @items.where.not(latitude: nil, longitude: nil)
    end

    search_params = params.slice("category", "size")

    if !search_params.empty?
      search_params.permit!
      @items = @items.where(search_params)
    end

    @hash = Gmaps4rails.build_markers(@items) do |item, marker|
      marker.lat item.latitude
      marker.lng item.longitude
      # marker.infowindow render_to_string(partial: "/items/map_box", locals: { item: item })
    end
  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  private
    def check_the_owner
      flash[:alert] = "You're not the owner."
      redirect_to items_path if current_user != @item.owner
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :description, :size, :price, :latitude, :longitude, :address, :category)
    end
end
