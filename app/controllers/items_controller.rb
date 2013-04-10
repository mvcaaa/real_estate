class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    unless @item = Item.where(id: params[:id]).first
      render text: 'Page not found', status: 404
    end
  end

  def create
    @item = Item.create(params[:item])
    render text: "Item #{@item.name}, #{@item.price} created"
  end

end
