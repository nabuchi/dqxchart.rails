class TopController < ApplicationController
  def index
    @item_list = []
    Item.all.each do |item|
        @item_list.push({
            :id => item.key,
            :name => URI.unescape(item.name),
            :amt => item.price_list[4].nil? ? 0 : '%.1f' % item.price_list[4]
        })
    end
    render :template => 'top/index'
  end
end
