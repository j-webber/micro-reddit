class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :link_url, presence: true, format: { with: URI.regexp(%w[http https]), message: "must be a valid URL: http://example.com" }
end
