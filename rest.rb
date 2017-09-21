require 'rest-client'

puts "+++RestClient+++\n\nSearch on bing.com:"
input = gets.chomp

response = RestClient.get("https://www.bing.com/search?q=#{input}", headers={})

puts "Here the response code:\n#{response.code}"

puts "This are the cookies:\n#{response.cookies}"

puts "This are the headers:\n#{response.headers}"


# test/controllers/static_pages_controller_test.rb
   require 'test_helper'

   class StaticPagesControllerTest < ActionController::TestCase

     test "should get home" do
       get :home
       assert_response :success
       assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
     end

     test "should get help" do
       get :help
       assert_response :success
       assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
     end

     test "should get about" do
       get :about
       assert_response :success
       assert_select "title", "About | Ruby on Rails Tutorial Sample App"
     end
   end
