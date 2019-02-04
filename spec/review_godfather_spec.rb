require 'spec_helper'

describe ReviewGodfather do 

  context 'Testing of New York Times data:' do 
    
    before(:all) do
      @api_key = ENV['API_KEY']
      @godfather_data = MovieReviews.new.get_godfather
      @godfather_data.retrieve('godfather', @api_key)
    end

    it 'should return coord to be a hash' do
      expect(@godfather_data.get_status).to eq("OK")
    end

  end
end