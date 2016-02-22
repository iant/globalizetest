require 'rails_helper'

RSpec.describe "/en/posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(title_en: "title_en 1", text_en: "text_en 1"),
      Post.create!(title_en: "title_en 2", text_en: "text_en 2")
    ])
  end

  it "renders a list of posts" do
    render
  end
end
