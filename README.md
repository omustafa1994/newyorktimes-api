# newyorktimes-api
https://developer.nytimes.com

### Description
This application uses the newyorktimes API to query a searched for movie. Through the service object model, testing of the returned data was performed to check for validity and consistency. This was tackled by using RSpec which is a Ruby testing tool. In addition, HTTParty is required to fetch and interact with the API. 

### Languages used
* Ruby

### How to use
1. Clone the Git repo OR download the ZIP
2. Open the files and run bundle install 
3. You will now be able to run the tests using RSpec!

### How to use
1. In terminal, locate the directory of the application and run ```bundle install``` to install the Gemfile. 
2. Create a .env file and insert your own API key from NewYorkTimes ```API_KEY=[Enter API key here]```.
3. In here place the API key and in terminal set up rspec using ```rspec --init```.
4. Finally, within the spec file replace the movie name with anything of your choosing ```@movie_data.retrieve('godfather', @api_key)``` and you can now run tests for that movie. 

### Challenges 
1. Had issues with testing the loop against a Date data type. 

### Learning points
1. Learned how to retrieve API key and get started quicker.
