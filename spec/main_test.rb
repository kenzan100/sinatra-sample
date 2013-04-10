  require 'spec_helper'

  describe "City API" do
    it "should respond to GET" do
      get '/cities.json'
      last_response.should be_ok
    end
  end
