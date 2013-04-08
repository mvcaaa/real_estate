class ItemsController < ApplicationController

  def index
    @items = Item.all
    render text: @items.map {|i| "#{i.name}, #{i.price}"}.join('<BR/>')
  end

  def create
   @item = Item.create(params[:item])
   render text: "Item #{@item.name}, #{@item.price} created"
  end

end
