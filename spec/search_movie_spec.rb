require 'spec_helper'

describe SearchByMovieName do 

  context 'Testing of New York Times data:' do 
    
    before(:all) do
      @api_key = ENV['API_KEY']
      @movie_data = MovieReviews.new.get_movie_name
      @movie_data.retrieve('godfather', @api_key) #example is Godfather
    end

    it 'should return "status" to equal "OK"' do
      expect(@movie_data.get_status).to eq("OK")
    end

    it 'should return "copyright" to be a String' do
      expect(@movie_data.get_copyright).to be_kind_of(String)
    end

    it 'should return "copyright" to contain "Copyright"' do
      expect(@movie_data.get_copyright).to include("Copyright")
    end

    it 'should return "has_more" to be a Boolean' do
      expect(@movie_data.get_has_more).to be(true).or be(false)
    end

    it 'should return "num_results" to be an Integer' do
      expect(@movie_data.get_num_results).to be_kind_of(Integer)
    end

    it 'should return "results" to be an Array' do
      expect(@movie_data.get_results).to be_kind_of(Array)
    end

    it 'should return all "display_title" to be a String' do
       @movie_data.get_results_display_title.each do |title|
          expect(title).to be_kind_of(String)
       end
    end

    it 'should return all "mpaa_rating" to be a String' do
      @movie_data.get_results_mpaa_rating.each do |title|
         expect(title).to be_kind_of(String)
      end
    end

    it 'should return all "critics_pick" to be an Integer' do
      @movie_data.get_results_critics_pick.each do |title|
         expect(title).to be_kind_of(Integer)
      end
    end

    it 'should return all "byline" to be a String' do
      @movie_data.get_results_byline.each do |title|
         expect(title).to be_kind_of(String)
      end
    end

    it 'should return all "headline" to be a String' do
      @movie_data.get_results_headline.each do |title|
         expect(title).to be_kind_of(String)
      end
    end

  end
end