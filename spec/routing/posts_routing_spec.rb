require "rails_helper"




RSpec.describe PostsController, type: :routing do



  describe "routing" do

    it "routes to #index" do
      expect(:get => "/en/posts").to route_to("posts#index", locale: "en")
    end

    it "routes to #new" do
      expect(:get => "/en/posts/new").to route_to("posts#new", locale: "en")
    end

    it "routes to #show" do
      expect(:get => "/en/posts/1").to route_to("posts#show", :id => "1", locale: "en")
    end

    it "routes to #edit" do
      expect(:get => "/en/posts/1/edit").to route_to("posts#edit", :id => "1", locale: "en")
    end

    it "routes to #create" do
      expect(:post => "/en/posts").to route_to("posts#create", locale: "en")
    end

    it "routes to #update via PUT" do
      expect(:put => "/en/posts/1").to route_to("posts#update", :id => "1", locale: "en")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/en/posts/1").to route_to("posts#update", :id => "1", locale: "en")
    end

    it "routes to #destroy" do
      expect(:delete => "/en/posts/1").to route_to("posts#destroy", :id => "1", locale: "en")
    end

  end
end
