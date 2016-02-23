require 'rails_helper'

describe "Posts" do
  describe "GET /en/posts" do
    it "displays posts#index" do
      Post.create!(:title_en => "title_en", :text_en => "text_en")
      visit posts_path(locale: :en)
      expect(page).to have_content 'title_en'
    end
  end

  describe "POST /en/posts/new" do
    it "creates a post" do
      visit new_post_path(locale: :en)
      within("#new_post") do
        fill_in 'Title en', :with => 'title_en'
        fill_in 'Text en', :with => 'text_en'
      end
      click_button 'Save'
      expect(page).to have_content "Post was successfully created."
    end
  end

  describe "POST /en/posts/1/edit" do
    it "edits a post" do
      Post.create!(:title_en => "title_en", :text_en => "text_en")      
      visit edit_post_path(locale: :en, id: 1)
      within("#edit_post_1") do
        fill_in 'Title en', :with => 'title_en update'
        fill_in 'Text en', :with => 'text_en update'
      end
      click_button 'Save'
      expect(page).to have_content "Post was successfully updated."
    end
  end

  describe "POST /en/posts/1/delete" do
    it "deletes a post" do
      Post.create!(:title_en => "title_en", :text_en => "text_en")      
      visit posts_path(locale: :en)
      click_link 'Delete'
      expect(page).to have_content "Post was successfully deleted."
    end
  end

end





