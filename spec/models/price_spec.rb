require 'spec_helper'

describe Price do
  describe 'test rspec' do
    before do
      price = Price.new
      price.key = 'key'
      price.name = 'ppp'
      price.price_list = [1,2,3,4]
      price.save
      @Prices = Price.all
    end
    context 'normal case' do
      it "key" do
        expect(@Prices.inspect).to eq(['aa'])
      end
    end
  end
end
