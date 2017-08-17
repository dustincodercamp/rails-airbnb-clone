class ItemsController < ApplicationController
  def index
    if params[:location].present?
      @items = Item.near(params[:location], 10)
    else
      @items = Item.where.not(latitude: nil, longitude: nil)
    end

    @hash = Gmaps4rails.build_markers(@items) do |item, marker|
      marker.lat item.latitude
      marker.lng item.longitude
      # marker.infowindow render_to_string(partial: "/items/map_box", locals: { item: item })
    end
  end

  def show
    @item = Item.find(params[:id])
  end
end
