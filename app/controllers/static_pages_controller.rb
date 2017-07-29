class StaticPagesController < ApplicationController
  def index
    @items = Item.all.order("updated_at DESC").limit(30)
  end

  def help
  end
end
