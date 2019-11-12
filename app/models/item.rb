class Item < ApplicationRecord
  def show
    @item = Items.find(params[:id])

  end
    
end
