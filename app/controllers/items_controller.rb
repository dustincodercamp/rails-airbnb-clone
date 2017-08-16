class ItemsController < ApplicationController
  def index
    @items = Item.all
    @items = Item.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@items) do |item, marker|
      marker.lat item.latitude
      marker.lng item.longitude
      # marker.infowindow render_to_string(partial: "/items/map_box", locals: { item: item })
    end
  end

  def show
  end
end
