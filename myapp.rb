require 'rubygems'
require 'sinatra'
#NOTE:  You have to comment out class wrapper (line 4 & line 18) to run app as standalone; to run with Capybara/Cucumber, uncomment these lines
class MyApp < Sinatra::Base    
    get "/" do
        erb :index
    end
         
    post "/thankyou" do
        @name = params["name"]
        @email = params["email"]
        erb :thankyou
    end
         
    get "/form" do
        erb :form
    end
end
