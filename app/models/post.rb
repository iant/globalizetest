class Post < ActiveRecord::Base
#  validates :title, allow_nil: false
#  validates :text, allow_nil: false

  translates :title, :text
  globalize_accessors :locales => I18n.available_locales, :attributes => [:title, :text]

  validates :"title_en", presence: true
  validates :"text_en", presence: true



end
