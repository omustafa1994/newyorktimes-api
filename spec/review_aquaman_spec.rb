require 'spec_helper'

describe ReviewAquaman do 

  context 'Testing of New York Times data:' do 
    
    before(:all) do
      @api_key = ENV['API_KEY']
      @movie_data = MovieReviews.new.get_godfather
      @movie_data.retrieve('aquaman', @api_key)
    end

    it 'should return "status" to equal "OK"' do
      expect(@movie_data.get_status).to eq("OK")
    end

    it 'should return "copyright" to be a String' do
      expect(@movie_data.get_copyright).to be_kind_of(String)
    end

  end
end