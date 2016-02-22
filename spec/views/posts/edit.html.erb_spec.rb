require 'rails_helper'

RSpec.describe "/en/posts/edit", type: :view, locale: :en do
  before(:each) do
    @post = assign(:post, Post.create!(:title_en => "title_en", :text_en => "text_en"))
  end

  it "renders the edit post form" do
    #render 
    render :template => "posts/edit.html.erb", :partial => "posts/form.html.erb", :locale => "en"


    assert_select "form[action=?][method=?]", post_path(@post, locale: :en), "post" do
    end
  end
end
