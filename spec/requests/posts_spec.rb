require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET posts" do
    it "works! (now write some real specs)" do
      get posts_path(locale: :en)
      expect(response).to have_http_status(200)
    end
  end
end
