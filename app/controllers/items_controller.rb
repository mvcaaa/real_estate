class ItemsController < ApplicationController

  def index
    @items = Item.all
    render text: @items.map {|i| "#{i.name}, #{i.price}"}.join('<BR/>')
  end

end
