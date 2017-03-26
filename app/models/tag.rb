class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :articles, through: :taggings

  def article_list
    self.tags.collect do |article|
      article.title
    end.join(", ")
  end
end
