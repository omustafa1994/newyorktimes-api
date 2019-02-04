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
4. In the spec file replace the movie name with anything of your choosing ```@movie_data.retrieve('godfather', @api_key)```.

### Challenges 
1. Setting up the dotenv folder and retrieving the API key that folder
2. Had issues with the initial loop testing, and calling the first data point into the loop

### Learning points
1. Learned how to retrieve API key from a different folder
2. Learned how to deal with generated data outputs which require two types of data types to test (i.e. Float and Integer)# newyorktimes-api
