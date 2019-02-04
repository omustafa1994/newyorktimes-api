# newyorktimes-api
https://developer.nytimes.com/docs/movie-reviews-api/1/overview

### Description
This application uses the newyorktimes API to query a searched for movie. Through the service object model, testing of the returned data was performed to check for validity and consistency. This was tackled by using RSpec which is a Ruby testing tool. In addition, HTTParty is required to fetch and read the API. 

### Languages used
* Ruby

### How to download
1. Clone the Git repo OR download the ZIP
2. Open the files and run bundle install 
3. You will now be able to run the tests using RSpec!

### How to use
To use the tests for yourself you can move the lib file in your own project. You will need to obtain your own API key in order for this to work and set up and dotenv file. Create a ```.env``` and add this line of code:
```
API_KEY=[Enter API key here]
```
In here place the API key and in terminal set up rspec using ```rspec --init```.

### Challenges 
1. Setting up the dotenv folder and retrieving the API key that folder
2. Had issues with the initial loop testing, and calling the first data point into the loop

### Learning points
1. Learned how to retrieve API key from a different folder
2. Learned how to deal with generated data outputs which require two types of data types to test (i.e. Float and Integer)# newyorktimes-api
