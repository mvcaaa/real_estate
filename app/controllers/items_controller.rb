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
    if @item.errors.empty?
      redirect_to item_path(@item)
    else
      render 'new'
    end
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.update(params[:id], params[:item])
    if @item.errors.empty?
      redirect_to item_path(@item)
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id]).destroy
    redirect_to action: 'index'
  end

  def address_changed?
    attrs = %w(address latitude longitude)
    attrs.any?{|a| send "#{a}_changed?"}
  end


end
