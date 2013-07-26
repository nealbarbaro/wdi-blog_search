class Article < ActiveRecord::Base
  belongs_to :author
  has_many :comments, :order => "created_at ASC"
  attr_accessible :content, :name, :published_at, :author

  # this will create an index within solar
  searchable do
    text :name, :boost => 5
    text :content
      #creates method

    text :comments do
      comments.map {|c| c.content}
    end
      # creates a virtual column, because articles doesn't
      # normally have a column for comments

    text :author do
      author.name
    end

    date :published_at
  end
end
