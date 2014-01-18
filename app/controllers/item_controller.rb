class ItemController < ApplicationController
  def graphs
    ret = []
    @amt_list = []
    @json = []
    @options = {}
    item = Item.where(:key => params[:key]).first
    @name = URI.unescape(item.name)
    Price.all({'key' => params[:key]}).each do |price|
        @json.push([price.created_at.getlocal.to_i*1000, price.price_list[4].nil? ? 0 : ('%.1f' % price.price_list[4]).to_i])
    end
    render :template => 'item/graphs'
  end
end
